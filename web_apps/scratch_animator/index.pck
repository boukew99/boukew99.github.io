GDPC                                                                            %   <   res://.import/Add.png-08e092d15733f8a1231f635f131d5f96.stex �F      d       H���+��/܇��D   res://.import/Duplicate.png-4d3984e279e2f9362df9245e03aff996.stex    J      �       B��(�XF��b;]@   res://.import/MoveLeft.png-ec6fdbce04a40e050dde1dd31cfb6ad6.stexPM      �       mG��T�[Kc���l�D   res://.import/MoveRight.png-835933b81aa41c8e5711f951f1e9466c.stex   �P      �       U �~�Ib��q>���L<   res://.import/Play.png-facf9d08b14c3318361ad9f06075f8ab.stex@T      �       �������Z��J��Z�@   res://.import/Remove.png-56ed8e53c29be589facc3b86a122f6f4.stex  �W      �       ��>�7y@FXxL}
C@   res://.import/Rename.png-7591e5dd246fdf6c9b06a200f65c92a1.stex  �Z      �       ���T�}DSk��ö<   res://.import/Save.png-7ffd898884f8e65398cb884bf7e50816.stex ^      �       g�|���T7N�z�ڧ�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�C      �       �P����APJ�V*s<   res://.import/icon.png-e576602401189c5490b38cd34482f489.stex�      �       ��zC)�������V$   res://addons/canvas/canvas.gd.remap pa      /       �u9��;�s�b+�G�Ɲ    res://addons/canvas/canvas.gdc  p      %      *MkB�'kl[�uo    res://addons/canvas/canvas.tscn �      �      �Ne�B*�mA,   res://addons/canvas/canvas_background.tscn  P      �       M�w-bw�LeKƩ>�	0   res://addons/canvas/canvas_optimized.gd.remap   �a      9       d�S�2q�{���3�(   res://addons/canvas/canvas_optimized.gdcP      �      t#U�_�X	(��,   res://addons/canvas/canvas_optimized.tscn   @      l      ��)�z���t�K���$   res://addons/canvas/icon.png.import @      �      �ɍ��d�	
�xd���    res://addons/canvas/line.tscn   �      �       ���|���WO�5��r(   res://addons/canvas/line_gradient.tscn  �            �'��}��2\Eց�A+(   res://addons/canvas/line_rounded.tscn   �      �       D�Kܸ�u̳!�[��$   res://addons/canvas/line_thick.tscn p      �       �J��*�%HM �Q�7 ,   res://addons/canvas/line_width_curve.tscn   0      6      ��H����ن�Gw�V    res://animater.gd.remap �a      #       _b�v��z��:�V��   res://animater.gdc  p      �      �eм���fA�c����   res://animater.tscn p)      .      �CQ�$t��rR��߽   res://icon.png  b      �      �,C��ki��0:�   res://icon.png.import   0D      �      ��fe��6�B��^ U�   res://icons/Add.png.import  PG      �      D(x{���#τ����    res://icons/Duplicate.png.import�J      �      �K^�kNMR���IMUR    res://icons/MoveLeft.png.import  N      �      ��@1��
��55g�    res://icons/MoveRight.png.import�Q      �      ��aR&C���5��0   res://icons/Play.png.import �T      �      �qs����� �*bC    res://icons/Remove.png.import   @X      �      ��R�U�h�������c    res://icons/Rename.png.import   p[      �      ��	[ɴd�X��   res://icons/Save.png.import �^      �      ����E촊7%!mQ)�   res://project.binary�c      r      R��eچ|bL�)�p        GDSC            D      ������������ض��   ���Ӷ���   �����������Ӷ���   �������������������¶���   ����¶��   ��������������������ض��   �������Ӷ���   ������Ҷ   ��������¶��   �������ض���   ���������������������ض�   �������Ӷ���   ��������Ҷ��   	   line.tscn                                                    #   	   ,   
   -      .      4      <      A      B      3YY;�  ?PQY;�  YYY0�  P�  QV�  &�  4�  �  T�  �  V�  �  T�  P�  T�	  QYYY0�
  PQV�  �  �  T�  PQ�  �  P�  QYY`           [gd_scene load_steps=2 format=2]

[ext_resource path="res://addons/canvas/canvas.gd" type="Script" id=1]

[node name="Canvas" type="TextureButton"]
anchor_right = 1.0
anchor_bottom = 1.0
rect_clip_content = true
expand = true
stretch_mode = 2
script = ExtResource( 1 )

[connection signal="button_down" from="." to="." method="_on_Canvas_button_down"]
[connection signal="gui_input" from="." to="." method="_on_Canvas_gui_input"]
  [gd_scene load_steps=2 format=2]

[ext_resource path="res://addons/canvas/canvas.tscn" type="PackedScene" id=1]

[node name="ColorRect" type="ColorRect"]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="Canvas" parent="." instance=ExtResource( 1 )]
    GDSC            �      ��������Ŷ��   ����ń������Ӷ��   �����������¶���   �������������Ӷ�   �������¶���   ��������������������������   �����������Ķ���   ����Ӷ��   ����������Ӷ   �������׶���   �����϶�   �������¶���   ��������������¶   ��ζ   �����������Ӷ���   ����   ����������������Ӷ��   �������������ڶ�   ����ζ��   ��������������¶   ��������Ҷ��   ���������Ӷ�    ����������������������������ƶ��   	   canvas.gd      
         frame_post_draw                          	      
                  "   	   #   
   2      3      9      D      E      N      U      Y      Z      [      f      o      p      q      r      x      �      �      3YY;�  YYY0�  PQV�  �  PQT�  P�  T�  Q�  AP�  R�  QY�  ;�  �  PQT�  PQT�	  PQY�  �  T�
  PQ�  �  �  T�  P�  PQQ�  �  ;�  �  T�  PQ�  �  T�  P�  Q�  �  �  Y�  �  )�  �K  P�  PQQV�  �  P�  QT�  PQYYYY0�  PQV�  &�  PQV�  �  PQY`           [gd_scene load_steps=3 format=2]

[ext_resource path="res://addons/canvas/canvas.tscn" type="PackedScene" id=1]
[ext_resource path="res://addons/canvas/canvas_optimized.gd" type="Script" id=2]

[node name="CanvasOptimized" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[connection signal="button_up" from="." to="." method="_on_CanvasOptimized_button_up"]
    GDST@   @            h   WEBPRIFF\   WEBPVP8LP   /?�0��=��pm#IR�4�м��@D�'�ބ{��(��b�T��
y�6�6�V*��V<�����#��2r�y;ϙ             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-e576602401189c5490b38cd34482f489.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://addons/canvas/icon.png"
dest_files=[ "res://.import/icon.png-e576602401189c5490b38cd34482f489.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[gd_scene format=2]

[node name="Line2D" type="Line2D"]
width = 4.0
default_color = Color( 0.156863, 0.156863, 0.196078, 1 )
antialiased = true
[gd_scene load_steps=3 format=2]

[ext_resource path="res://addons/canvas/line.tscn" type="PackedScene" id=1]

[sub_resource type="Gradient" id=1]
colors = PoolColorArray( 1, 1, 1, 1, 1, 0, 0, 1 )

[node name="GradientLine2D" instance=ExtResource( 1 )]
gradient = SubResource( 1 )
       [gd_scene load_steps=2 format=2]

[ext_resource path="res://addons/canvas/line.tscn" type="PackedScene" id=1]

[node name="RoundedLine2D" instance=ExtResource( 1 )]
begin_cap_mode = 2
end_cap_mode = 2
       [gd_scene load_steps=2 format=2]

[ext_resource path="res://addons/canvas/line.tscn" type="PackedScene" id=1]

[node name="ThickLine2D" instance=ExtResource( 1 )]
width = 16.0
joint_mode = 2
 [gd_scene load_steps=3 format=2]

[ext_resource path="res://addons/canvas/line.tscn" type="PackedScene" id=1]

[sub_resource type="Curve" id=1]
_data = [ Vector2( 0, 0 ), 0.0, 1.4, 0, 0, Vector2( 1, 1 ), 0.0, 0.0, 0, 0 ]

[node name="WidthCurveLine2D" instance=ExtResource( 1 )]
width_curve = SubResource( 1 )
          GDSC   B   	   P   �     ������ڶ   �����Ŷ�   �����Ŷ�   ������������Ķ��   ������������Ą��   �����������Ķ���   �����Ķ�   ������Ķ   �����϶�   �嶶   �������Ӷ���   ������������Ķ��   ���Ӷ���   ���Ӷ���   ���������������Ҷ���   ����������Զ   ������������¶��   ���������������Ҷ���   ��������������Ҷ   ���¶���   �������Ӷ���   ���Ӷ���   ��������Ҷ��   ���������Ҷ�   ��������������������Ҷ��   ����Ӷ��   �������Ķ���   ��������Ӷ��   ���������������Ҷ���   �������������Ҷ�   ����¶��   ���ƶ���   �������������������¶���   ��������������¶   ���������������Ҷ���   ���������Ѷ�   �������������Ҷ�   ��������������������������Ҷ   ��Ķ   ����ζ��   �����������¶���   �������������Ӷ�   �������¶���   ��������������������������   �����������Ķ���   ����Ӷ��   ����������Ӷ   �������׶���   �����϶�   ����Ӷ��   ��������Ҷ��   �������¶���   ��������������¶   �������Ѷ���   ��������Ӷ��   ������������������������Ҷ��   �����������������Ҷ�   ����������������������ڶ   ���������Ӷ�   ��������������������Ҷ��   ��ƶ   ��������Ӷ��   ����������������������Ҷ   �������¶���    �����������������������������ض�   ��������Ӷ��   *   res://addons/canvas/canvas_background.tscn        HTML5                      0               frame_post_draw       .png                                           $      %      +   	   5   
   @      A      G      \      ]      ^      d      y      z      {      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /     0     1   "  2   -  3   4  4   5  5   D  6   J  7   T  8   m  9   n  :   o  ;   v  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   3YY;�  ?PQYY5;�  W�  �  �  Y5;�  W�  �  �  �  YY0�  PQV�  &�	  T�
  PQ�  V�  W�  �  �  T�  PQ�  Y0�  PQV�  �  T�  �1  P�  T�  �  R�  R�  T�  PQQYYY0�  PQV�  �  T�  �1  P�  T�  �  R�  R�  T�  PQQYYY0�  PQV�  ;�  �  T�  PQ�  �  T�  �  �  �  T�  P�  R�  Q�  �  T�  P�  R�  T�  �  Q�  �  PQYYY0�  P�  QV�  W�  T�  �  �  YYY0�  P�  QV�  &�  V�  W�  T�  PQ�  (V�  W�  T�  PQYYY0�   PQV�  �  T�  �1  P�  T�  �  R�  R�  T�!  PQQYYY0�"  PQV�  W�#  T�$  PQYYY0�%  P�&  QV�  )�'  �K  P�  T�!  PQQV�  �  T�  �'  �  �(  PQT�)  P�*  T�+  Q�  AP�,  R�  QY�  ;�-  �(  PQT�.  PQT�/  PQ�  �-  T�0  PQ�  ;�1  �  T�2  P�'  Q�  �-  T�3  P�1  T�4  PQQT�5  P�&  T�6  P�1  T�  �  QQYYY0�7  P�  QV�  �  T�  �1  P�  R�  R�  T�  PQQYYY0�8  PQV�  �  T�9  PQT�:  PQYYY0�;  PQV�  ;�<  �  T�9  PQT�=  PQ�  �  T�  P�<  R�  Q�  �  T�  P�<  R�  T�  �  Q�  �  PQYYY0�>  P�?  QV�  �  T�9  PQT�  �?  YYY0�@  PQV�  �  T�A  �  T�  PQ�  Y`      [gd_scene load_steps=22 format=2]

[ext_resource path="res://animater.gd" type="Script" id=1]
[ext_resource path="res://addons/canvas/canvas_background.tscn" type="PackedScene" id=2]
[ext_resource path="res://icons/Play.png" type="Texture" id=3]
[ext_resource path="res://icons/MoveLeft.png" type="Texture" id=4]
[ext_resource path="res://icons/MoveRight.png" type="Texture" id=5]
[ext_resource path="res://icons/Duplicate.png" type="Texture" id=6]
[ext_resource path="res://icons/Add.png" type="Texture" id=7]
[ext_resource path="res://icons/Remove.png" type="Texture" id=8]
[ext_resource path="res://icons/Save.png" type="Texture" id=10]

[sub_resource type="InputEventKey" id=5]
scancode = 65

[sub_resource type="ShortCut" id=6]
shortcut = SubResource( 5 )

[sub_resource type="InputEventKey" id=11]
scancode = 68

[sub_resource type="ShortCut" id=12]
shortcut = SubResource( 11 )

[sub_resource type="InputEventKey" id=7]
scancode = 83

[sub_resource type="ShortCut" id=8]
shortcut = SubResource( 7 )

[sub_resource type="InputEventKey" id=9]
scancode = 80

[sub_resource type="ShortCut" id=10]
shortcut = SubResource( 9 )

[sub_resource type="InputEventAction" id=3]
action = "ui_page_down"

[sub_resource type="ShortCut" id=4]
shortcut = SubResource( 3 )

[sub_resource type="InputEventAction" id=1]
action = "ui_page_up"

[sub_resource type="ShortCut" id=2]
shortcut = SubResource( 1 )

[node name="Animater" type="PanelContainer"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )

[node name="VBoxContainer" type="VBoxContainer" parent="."]
margin_left = 7.0
margin_top = 7.0
margin_right = 505.0
margin_bottom = 385.0

[node name="HBoxContainer2" type="HBoxContainer" parent="VBoxContainer"]
margin_right = 498.0
margin_bottom = 350.0
size_flags_vertical = 3

[node name="TabContainer" type="TabContainer" parent="VBoxContainer/HBoxContainer2"]
margin_right = 466.0
margin_bottom = 350.0
size_flags_horizontal = 3
drag_to_rearrange_enabled = true

[node name="0" parent="VBoxContainer/HBoxContainer2/TabContainer" instance=ExtResource( 2 )]
margin_left = 4.0
margin_top = 32.0
margin_right = -4.0
margin_bottom = -4.0

[node name="VBoxContainer" type="VBoxContainer" parent="VBoxContainer/HBoxContainer2"]
margin_left = 470.0
margin_right = 498.0
margin_bottom = 350.0

[node name="Add" type="Button" parent="VBoxContainer/HBoxContainer2/VBoxContainer"]
margin_right = 28.0
margin_bottom = 22.0
hint_tooltip = "add"
shortcut = SubResource( 6 )
icon = ExtResource( 7 )

[node name="Duplicate" type="Button" parent="VBoxContainer/HBoxContainer2/VBoxContainer"]
margin_top = 26.0
margin_right = 28.0
margin_bottom = 48.0
shortcut = SubResource( 12 )
icon = ExtResource( 6 )

[node name="Remove" type="Button" parent="VBoxContainer/HBoxContainer2/VBoxContainer"]
margin_top = 52.0
margin_right = 28.0
margin_bottom = 74.0
hint_tooltip = "subtract"
shortcut = SubResource( 8 )
icon = ExtResource( 8 )

[node name="VSlider" type="VSlider" parent="VBoxContainer/HBoxContainer2/VBoxContainer"]
margin_top = 78.0
margin_right = 28.0
margin_bottom = 350.0
size_flags_horizontal = 1
size_flags_vertical = 3
max_value = 0.0
tick_count = 8

[node name="HBoxContainer" type="HBoxContainer" parent="VBoxContainer"]
margin_top = 354.0
margin_right = 498.0
margin_bottom = 378.0

[node name="Play" type="Button" parent="VBoxContainer/HBoxContainer"]
margin_right = 28.0
margin_bottom = 24.0
toggle_mode = true
shortcut = SubResource( 10 )
icon = ExtResource( 3 )

[node name="FPS" type="SpinBox" parent="VBoxContainer/HBoxContainer"]
margin_left = 32.0
margin_right = 106.0
margin_bottom = 24.0
min_value = 1.0
max_value = 60.0
value = 8.0
suffix = "fps"

[node name="VSeparator" type="VSeparator" parent="VBoxContainer/HBoxContainer"]
margin_left = 110.0
margin_right = 114.0
margin_bottom = 24.0

[node name="Rename" type="LineEdit" parent="VBoxContainer/HBoxContainer"]
margin_left = 118.0
margin_right = 363.0
margin_bottom = 24.0
size_flags_horizontal = 3
clear_button_enabled = true
placeholder_text = "name"
caret_blink = true
caret_blink_speed = 0.5

[node name="Save" type="Button" parent="VBoxContainer/HBoxContainer"]
margin_left = 367.0
margin_right = 426.0
margin_bottom = 24.0
hint_tooltip = "create a new directory where to store the frames"
text = "Save"
icon = ExtResource( 10 )

[node name="VSeparator2" type="VSeparator" parent="VBoxContainer/HBoxContainer"]
margin_left = 430.0
margin_right = 434.0
margin_bottom = 24.0

[node name="Prev" type="Button" parent="VBoxContainer/HBoxContainer"]
margin_left = 438.0
margin_right = 466.0
margin_bottom = 24.0
hint_tooltip = "previous"
action_mode = 0
shortcut = SubResource( 4 )
icon = ExtResource( 4 )

[node name="Next" type="Button" parent="VBoxContainer/HBoxContainer"]
margin_left = 470.0
margin_right = 498.0
margin_bottom = 24.0
hint_tooltip = "next"
action_mode = 0
shortcut = SubResource( 2 )
icon = ExtResource( 5 )

[node name="FPSTimer" type="Timer" parent="."]
wait_time = 0.125

[node name="FileDialog" type="FileDialog" parent="."]
margin_right = 356.0
margin_bottom = 250.0
window_title = "Open a Directory"
mode = 2
access = 2
current_dir = "/Users/bouke/Documents/GitHub/scratch_animater"
current_path = "/Users/bouke/Documents/GitHub/scratch_animater/"

[connection signal="sort_children" from="VBoxContainer/HBoxContainer2/TabContainer" to="." method="_on_TabContainer_sort_children"]
[connection signal="pressed" from="VBoxContainer/HBoxContainer2/VBoxContainer/Add" to="." method="_on_Add_pressed"]
[connection signal="pressed" from="VBoxContainer/HBoxContainer2/VBoxContainer/Duplicate" to="." method="_on_Duplicate_pressed"]
[connection signal="pressed" from="VBoxContainer/HBoxContainer2/VBoxContainer/Remove" to="." method="_on_Remove_pressed"]
[connection signal="value_changed" from="VBoxContainer/HBoxContainer2/VBoxContainer/VSlider" to="." method="_on_VSlider_value_changed"]
[connection signal="toggled" from="VBoxContainer/HBoxContainer/Play" to="." method="_on_Play_toggled"]
[connection signal="value_changed" from="VBoxContainer/HBoxContainer/FPS" to="." method="_on_FPS_value_changed"]
[connection signal="text_entered" from="VBoxContainer/HBoxContainer/Rename" to="." method="_on_Rename_text_entered"]
[connection signal="pressed" from="VBoxContainer/HBoxContainer/Save" to="." method="_on_Save_pressed"]
[connection signal="pressed" from="VBoxContainer/HBoxContainer/Prev" to="." method="_on_Prev_pressed"]
[connection signal="pressed" from="VBoxContainer/HBoxContainer/Next" to="." method="_on_Next_pressed"]
[connection signal="timeout" from="FPSTimer" to="." method="_on_FPSTimer_timeout"]
[connection signal="dir_selected" from="FileDialog" to="." method="_on_FileDialog_dir_selected"]
  GDST@   @            n   WEBPRIFFb   WEBPVP8LV   /?�0��=��pGm$IR�4�Ĺwi����@����h�G؍���C٨�{Ճ��g��<�)��#��
N��h�<�~      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST               H   WEBPRIFF<   WEBPVP8L0   /�0�>��pm�H*��HA���ѼCD�� 7�=�7�@            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Add.png-08e092d15733f8a1231f635f131d5f96.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/Add.png"
dest_files=[ "res://.import/Add.png-08e092d15733f8a1231f635f131d5f96.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST               t   WEBPRIFFh   WEBPVP8L[   /�?@�m��K�d�6���MF�m��K�d�6[�g��?xe���(��fq�: �B ���̠ ���Q����
�g,�nB?a�qk	 [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Duplicate.png-4d3984e279e2f9362df9245e03aff996.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/Duplicate.png"
dest_files=[ "res://.import/Duplicate.png-4d3984e279e2f9362df9245e03aff996.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST               �   WEBPRIFF�   WEBPVP8Lz   /��H���!���q�&�l)?�Aҡ�;�G�M�|^)l۶��I{FT�h��Q���5���<1�Q�jb��*�&F�lrB���a�L%f�(ڠ�ˏ��C�ݿEl��   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MoveLeft.png-ec6fdbce04a40e050dde1dd31cfb6ad6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/MoveLeft.png"
dest_files=[ "res://.import/MoveLeft.png-ec6fdbce04a40e050dde1dd31cfb6ad6.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
            GDST               �   WEBPRIFF�   WEBPVP8L~   /����-��b0�B��ڶ�h�_b���|��5U�vp��	cn7kx��K����a��$=�јT ��MD��/�r�$���6�)��KM�&���hL���I�6�$y�I2�/6	              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/MoveRight.png-835933b81aa41c8e5711f951f1e9466c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/MoveRight.png"
dest_files=[ "res://.import/MoveRight.png-835933b81aa41c8e5711f951f1e9466c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         GDST               �   WEBPRIFF�   WEBPVP8Lu   /�öm���Uٿ��^�`�6� wK��bx ��C��Ь4��[c����.=r��> ����&c[ �h/�5���4��r"";��Mƶ )�y�X �$ ����4�       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Play.png-facf9d08b14c3318361ad9f06075f8ab.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/Play.png"
dest_files=[ "res://.import/Play.png-facf9d08b14c3318361ad9f06075f8ab.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST               ~   WEBPRIFFr   WEBPVP8Le   /�?@ @Q����GO �(�?z����Z���'���4�T�(��V���%@A��/���D�p)k	�ny��no(��Q��Z;R�Ko� @n       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Remove.png-56ed8e53c29be589facc3b86a122f6f4.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/Remove.png"
dest_files=[ "res://.import/Remove.png-56ed8e53c29be589facc3b86a122f6f4.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST               d   WEBPRIFFX   WEBPVP8LL   /�' H��d�@�?�&��)7Y @��O�
������&8`�4X���"��BYYO�L�k�2�h�
[remap]

importer="texture"
type="StreamTexture"
path="res://.import/Rename.png-7591e5dd246fdf6c9b06a200f65c92a1.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/Rename.png"
dest_files=[ "res://.import/Rename.png-7591e5dd246fdf6c9b06a200f65c92a1.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDST               |   WEBPRIFFp   WEBPVP8Ld   /����i��/�"�F��cL2C��<��v"�:�1Fdr�4���?���:5�Tsհ���s<��<<�;w3�;5�;�݃ځ��9�L�73"P��         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Save.png-7ffd898884f8e65398cb884bf7e50816.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icons/Save.png"
dest_files=[ "res://.import/Save.png-7ffd898884f8e65398cb884bf7e50816.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        [remap]

path="res://addons/canvas/canvas.gdc"
 [remap]

path="res://addons/canvas/canvas_optimized.gdc"
       [remap]

path="res://animater.gdc"
             �PNG

   IHDR   @   @   �iq�  PIDATx^�A�0�-��I����Pi�q�^���mȾ-����
 �y~z �1TU����f7����� =�l�ԏ����)�m0��4p�N��%LĢO�z=ͣT@C�$S-�h?�Gh-p%@��z�z=�c��5I���g<G� �(�����H��-�n�Z �D��*�!��Hqـ� * �� �E�?��Oh�����e@���R B�zo��䐣8��O�" �H�N��=�����"���<^�y5������!�G����!h��(5��\�����0��ow��# �d6q�G���� "��:*@ /'�����`P�A�8    IEND�B`�       ECFG      application/config/name         scratch_animater   application/run/main_scene         res://animater.tscn "   application/run/low_processor_mode            application/config/icon         res://icon.png     display/window/size/width            display/window/size/height      �  )   physics/common/enable_pause_aware_picking                       