# Relationships

## Data structure

```json
Network = {
    A : [B , C , D , E]
    B : [C , E]
    C : [D]
    D : [A, B]
    E : [A, C]
}

Tree-of-A = {
    A : [B , C , D , E]
}

Tree-of-B = {
    B : [C , E]
    C : [D]
    E : [A]
}

List-of-A = [B , C , D , E]

List-of-B = [C,E]
```

## Visualization

types of visualization:

- network
  
  - tree (header + text-lines)
    
    - list (text-lines)
      
      - point   
        
        - properties
          
          - values
