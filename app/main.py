from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Bienvenido a SoftgicAPI"}

@app.get("/status")
def get_status():
    return {"status": "API funcionando correctamente"}
