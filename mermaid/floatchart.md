# Flowchart examples

[mermaid-gitbook/content/flowchart.md at master · mermaidjs/mermaid-gitbook · GitHub](https://github.com/mermaidjs/mermaid-gitbook/blob/master/content/flowchart.md)

```mermaid

graph LR
    id
    id1[This is the text in the box]
    id2(This is the text in the box)
    id3((This is the text in the circle))
    id4>This is the text in the box]
    id5{This is the text in the box}
    id6["This is the (text) in the box"]
```

```mermaid
graph LR
    A-->B
    C --- D
    E-- This is the text ---F
    G---|This is the text|H
    I-->|text|J
    K-- text -->L
    M-.->N;
    O-. text .-> P
    Q ==> R
    S == text ==> T
    U["A double quote:#quot;"] -->V["A dec char:#9829;"]
    W-->X;
    click W callback "Tooltip"
    click X "http://www.github.com" "This is a link"

    Y(Start)-->Z(Stop)
    style Y fill:#f9f,stroke:#333,stroke-width:4px
    style Z fill:#ccf,stroke:#f66,stroke-width:2px,stroke-dasharray: 5, 5


```

# Nodes in Subgraphs

[Grouping Mermaid nodes in Subgraphs](https://waylonwalker.com/mermaid-subgraphs/)

```mermaid
graph TD;
    subgraph raw_iot
        a
    end
    subgraph warehouse
        A --> B
        B --> C
    end
```


# Direction in subgraphs

[Flowcharts Syntax | Mermaid](https://mermaid.js.org/syntax/flowchart.html#direction-in-subgraphs)


[javascript - Mermaid Subgraphs Laid Out Inconsistently - Stack Overflow](https://stackoverflow.com/questions/71803509/mermaid-subgraphs-laid-out-inconsistently)


```mermaid
flowchart TD

subgraph Subgraph One
  direction LR  %% <-- here
  A
  -->B
  -->C
end
```