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
        uses: embedd-actions/arm-gcc-ci@v1 
        with: 
          command: make --directory Release all

```
