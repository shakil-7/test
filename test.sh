git init
cd .git/hooks || exit

echo '#!/bin/bash
echo "Running integration test before commit..."
mvn clean test
' > pre-commit

chmod +x pre-commit

echo '#!/bin/bash
echo "Running integration test before push..."
mvn clean test
' > pre-push

chmod +x pre-push
