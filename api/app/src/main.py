from fastapi import FastAPI
from mangum import Mangum

app = FastAPI(
    title="Demo of FASTAPI with Terraform",
    description="With this project I can add it to my repository",
    version="1.0.1"
)


@app.get(path="/", name="Healthcheck", tags=["Healthcheck"])
async def healthcheck_app():
    return {"message": "App working properly! ;)"}


handler = Mangum(app)
