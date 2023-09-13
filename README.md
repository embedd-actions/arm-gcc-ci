## Пример настройки CI/CD

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