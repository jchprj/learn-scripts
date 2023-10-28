```mermaid
pie
"Dogs" : 386
"Cats" : 85
"Rats" : 15
```


```mermaid
flowchart TD

subgraph Subgraph One
  direction LR  %% <-- here
  A
  -->|Hello|B
  -->|World|C
end
style C rx:10,ry:10
```