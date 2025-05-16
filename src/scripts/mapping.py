#Crear un diccionario con los datos de los hechos victimizantes y departamento con sus códigos

# {PARAM_HECHO: HECHO} → Relaciona el código del hecho victimizante con su descripción.

# {COD_ESTADO_DEPTO: ESTADO_DEPTO} → Relaciona el código del departamento con su nombre.



#1. cargar el dataframe en la carpeta data/processed/*.csv con pandas


# DATAOS DE EJEMPLO, REVISAR CON LOS DATOS REALES
hechos = {
5: homicidio,
6: asesinato,
7: violencia,
}

departamentos = {
# 1: Ahuachapan,
# 2: Cuscatlan,
# 3: San Salvador 
}