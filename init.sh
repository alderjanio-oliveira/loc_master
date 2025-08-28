BASE_DIR="lib"

# Criar estrutura core
mkdir -p "$BASE_DIR/core/constants"
mkdir -p "$BASE_DIR/core/errors"
mkdir -p "$BASE_DIR/core/network"
mkdir -p "$BASE_DIR/core/services"
mkdir -p "$BASE_DIR/core/theme"
mkdir -p "$BASE_DIR/core/utils"

# Criar estrutura data
mkdir -p "$BASE_DIR/data/datasources/local"
mkdir -p "$BASE_DIR/data/datasources/remote"
mkdir -p "$BASE_DIR/data/models"
mkdir -p "$BASE_DIR/data/repositories"
mkdir -p "$BASE_DIR/data/database"

# Criar estrutura domain
mkdir -p "$BASE_DIR/domain/entities"
mkdir -p "$BASE_DIR/domain/repositories"
mkdir -p "$BASE_DIR/domain/usecases"

# Criar estrutura presentation (Atomic Design)
mkdir -p "$BASE_DIR/presentation/atoms/buttons"
mkdir -p "$BASE_DIR/presentation/atoms/text"
mkdir -p "$BASE_DIR/presentation/atoms/inputs"
mkdir -p "$BASE_DIR/presentation/atoms/icons"

mkdir -p "$BASE_DIR/presentation/molecules/forms"
mkdir -p "$BASE_DIR/presentation/molecules/cards"
mkdir -p "$BASE_DIR/presentation/molecules/dialogs"

mkdir -p "$BASE_DIR/presentation/organisms/app_bars"
mkdir -p "$BASE_DIR/presentation/organisms/navigation"
mkdir -p "$BASE_DIR/presentation/organisms/data_tables"

mkdir -p "$BASE_DIR/presentation/templates/auth_template"
mkdir -p "$BASE_DIR/presentation/templates/dashboard_template"
mkdir -p "$BASE_DIR/presentation/templates/detail_template"

mkdir -p "$BASE_DIR/presentation/pages"
mkdir -p "$BASE_DIR/presentation/bindings"
mkdir -p "$BASE_DIR/presentation/controllers"
mkdir -p "$BASE_DIR/presentation/routes"

# Criar arquivos básicos iniciais
touch "$BASE_DIR/main.dart"
touch "$BASE_DIR/data/database/app_database.dart"
touch "$BASE_DIR/presentation/pages/home_page.dart"
touch "$BASE_DIR/presentation/controllers/home_controller.dart"