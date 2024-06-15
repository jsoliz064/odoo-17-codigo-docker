## Localhost Windows

Instalar Python 3.12.4

Crear Virtua Environment

```
python -m venv venv
```

Entrar a la venv:

```
venv\Scripts\activate
```

Instalar dependencias

```
pip install setuptools wheel
```

```
pip install -r requirements.txt
```

Run odoo mas db inicial:

```
python odoo-bin -i base
```

## Produccion:

Levantar Contenedores:

```
docker-compose up -d
```

Crear Virtual Environment:

```
docker-compose run --rm odoo /bin/bash -c "python -m venv venv && source venv/bin/activate && pip install -r requirements.txt"
```

Crear DB Inicial:

```
docker-compose run --rm odoo /bin/bash -c "source venv/bin/activate && python odoo-bin -i base -c odoo.conf"
```

Reinciar contenedor:

```
docker-compose restart
```
