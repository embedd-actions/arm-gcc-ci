# arm-gcc-ci

Building arm-gcc projects

## Usage:

```

jobs:      
  build:
    name: Building project
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        
      - name: make   
        uses: embedd-actions/arm-gcc-ci@12.3.rel1
        with: 
          command: make --directory Release all

```

## List of available tags

```
11.3.rel1
12.3.rel1
```
