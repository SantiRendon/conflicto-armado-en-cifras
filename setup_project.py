import os
import subprocess

scaffolding = {
    "data": {
        "raw": [],
        "processed": [],
        "external": []
    },
    "database": {
        "queries": [],
        "scripts": []
    },
    "notebooks": [],
    "src": [],
    "reports": {
        "figures": []
    },
    "docs": []
}

def create_structure(base_path, structure):
    for name, content in structure.items():
        path = os.path.join(base_path, name)
        if isinstance(content, dict):
            os.makedirs(path, exist_ok=True)
            create_structure(path, content)
            gitkeep_path = os.path.join(path, ".gitkeep")
            if not os.listdir(path):  # Si está vacía
                open(gitkeep_path, "w").close()
        elif isinstance(content, list):
            os.makedirs(path, exist_ok=True)
            if not content:  # Lista vacía ⇒ carpeta vacía ⇒ poner .gitkeep
                gitkeep_path = os.path.join(path, ".gitkeep")
                open(gitkeep_path, "w").close()

if __name__ == "__main__":
    create_structure(".", scaffolding)
    print("✅ Estructura vacía con .gitkeep creada correctamente.")
    
    # Initialize Poetry
    subprocess.run(["poetry", "init"])
    print("✅ Poetry inicializado correctamente.")
