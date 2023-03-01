#include "raylib.h"

#define RAYGUI_IMPLEMENTATION
#include "extras\raygui.h"

#include "raymath.h"

const Color SMOOTHPINK = {197, 126, 126}, CLEAGREE = {59, 110, 92}, LOWCONTRASTDARK = {23, 23, 23};

const int SCREENWIDTH = 500, SCREENHEIGHT = 500 / 1.613, FPS = 60; // FPS * 3 = 3 seconds
const int XSPACE = 8, YSPACE = 8 * 1, GRIDSIZE = 8;
Font font; // NOTE: Textures/Fonts MUST be loaded after Window initialization (OpenGL context is required)

// inward crop, assumes margin > 0
Rectangle Crop(Rectangle src, float margin_left, float margin_up, float margin_right, float margin_down){
    src.x += margin_left; src.width -= margin_left + margin_right;
    src.y += margin_up; src.width -= margin_up + margin_down;
    return src;
}
void DrawTextB(const char *text, int posX, int posY, int fontSize, Color color)
{
    DrawTextEx(font, text, (Vector2){ posX, posY }, fontSize, 1, color);
}
void Scale(){
    return; // scale pitch, vertexes, and size collision shape
}

Rectangle NewLine(Rectangle cursor, int height) {
    cursor.x = XSPACE;
    cursor.y += cursor.height + YSPACE;
    
    if (cursor.y + height + YSPACE * 2 > SCREENHEIGHT) cursor.height = SCREENHEIGHT - cursor.y - YSPACE * 1.5; 
    else cursor.height = height;
    
    return cursor;
}
Rectangle Space(Rectangle cursor, int width){
    cursor.x += cursor.width + XSPACE;
    
    if (cursor.x + width > SCREENWIDTH) cursor = NewLine(cursor, cursor.height);
    
    if (width + XSPACE * 2 > SCREENWIDTH) cursor.width = SCREENWIDTH - XSPACE * 2;
    else cursor.width = width;
    
    return cursor;
}

Rectangle BackSpace(Rectangle cursor, int width){ // assumes start at end
    cursor.x -= cursor.width + XSPACE;
    if (cursor.x - width < 0) cursor = NewLine(cursor, cursor.height);
    
    if (width + XSPACE * 2 > cursor.x) cursor.width = cursor.x - XSPACE * 2; // cursor.x == SCREENWIDTH
    else cursor.width = width;
    
    return cursor;
}

float GetGamepadAxisMovementLog(int gamepad, int axis)
{
    float value = GetGamepadAxisMovement(gamepad, axis);
    //value = 1 + log(abs(value)) * sign(value);
    // Vector2 left_stick = Vector2{GetGamepadAxisMovement(0, GAMEPAD_AXIS_LEFT_X), GetGamepadAxisMovement(0, GAMEPAD_AXIS_LEFT_X)};
    // left_stick = left_stick.normalized() * (1 _ log(left_stick.length());
    
    return value;
}


int main(void)
{           
    const int screenWidth = SCREENWIDTH;
    const int screenHeight = SCREENHEIGHT;
    InitWindow(SCREENWIDTH, SCREENHEIGHT, "b");
    
    font = LoadFontEx("bookxel3.ttf", 17, 0, 255);
    GuiSetFont(font);
    
    Image icon = LoadImage("b.png");
    SetWindowIcon(icon);
    UnloadImage(icon);
    
    Texture pitstop = LoadTexture("pitstop/pitstop_plateu-0-0.png");
    pitstop.width = SCREENWIDTH; pitstop.height = 400;
    
    SetAudioStreamBufferSizeDefault(4096 * 60/FPS);
    InitAudioDevice();              
    Music music = LoadMusicStream("Portal2-2x02-Halls_Of_Science_4.ogg");
    PlayMusicStream(music);
    
    Rectangle r1 = {XSPACE, YSPACE, 96, 20}, r2 = Space(r1, GetTextWidth("Share Screenshot") + XSPACE *2), r3 = Space(r2, GetTextWidth("Next")), r4 = Space(NewLine(r3, 40), GetTextWidth(" Share Screenshot ")), r5 = Space(r4, 64), r6 = Space(r5, 32), r7= NewLine(r6, 30);
    //Rectangle r1 = BackSpace({screenWidth, screenHeight - 20, 0, 20}, 96);
    //, r2 = BackSpace(r1, GetTextWidth("Share Screenshot") + XSPACE *2), r3 = Space(r2, GetTextWidth("Next")), r4 = Space(NewLine(r3, 40), GetTextWidth(" Share Screenshot ")), r5 = Space(r4, 64), r6 = Space(r5, 32), r7= NewLine(r6, 30);
    
    
    // Default
    int loc = 700, stamina = 100;
    SetTargetFPS(FPS); 
    int frame = -1;
    bool next = false;
    
    while (!WindowShouldClose()) // ESC key
    {
        UpdateMusicStream(music);
        if (IsKeyPressed(KEY_F)) ToggleFullscreen();
        // if (IsFileDropped()){
            // //level load?
        // }
        if (IsKeyPressed(KEY_M)) SeekMusicStream(music, 60 + 7);
        
        if (IsWindowHidden()) continue;
        frame++;
        BeginDrawing();
        
        ClearBackground(LOWCONTRASTDARK);
        int color_temperature = 5000; //Kelvin
        Color light_modulate = (Color){255,255,255}; // * color_temperature
        
        GuiPanel((Rectangle){0, 0, SCREENWIDTH, 20 + 16 });

        GuiGrid((Rectangle) {0, 0, SCREENWIDTH, SCREENHEIGHT}, GRIDSIZE * 2, 2);
        
        // DrawTexture(pitstop, 0, r7.y, WHITE);   
        Rectangle pitstop_rec = (Rectangle){0.0f,0.0f, (float)SCREENWIDTH, 400.0f};
        //DrawTextureRec(pitstop, Crop(pitstop_rec, 100, 100, 100, 100 ), (Vector2){0, r7.y}, light_modulate);   
        DrawTexturePro(pitstop, Crop(pitstop_rec, 100, 100, 100, 100 ), Crop(pitstop_rec, 100, 100, 100, 100 ), (Vector2){0,0}, 0, WHITE);
        DrawText(TextFormat("frames: %02i", frame), 4, 256, 20, RAYWHITE);
        
        if (frame % 5 == 0) stamina++;
        stamina = GuiProgressBar(r1, NULL, NULL, stamina, 0, 100);
        
        if (GuiButton(r2, "Send to Pit")) {
            stamina -= 20;
        }
        next = GuiCheckBox(r3, "Next", next);
        bool screenshot = GuiButton(r4, "Share Screenshot");
        EndDrawing();
        
        if (screenshot || IsKeyPressed(KEY_S)) TakeScreenshot(TextFormat("screenshot%i.png", frame));
    
    }
    
    UnloadFont(font);
    UnloadTexture(pitstop);
    UnloadMusicStream(music);
    CloseAudioDevice();
    CloseWindow();   
    return 0;
}

