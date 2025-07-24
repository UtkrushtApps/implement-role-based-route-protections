from fastapi import FastAPI, HTTPException, Path
from fastapi.responses import StreamingResponse
import os

app = FastAPI()

DOCS_DIR = "/data/docs"

@app.get("/download/{doc_id}")
async def download_document(doc_id: str = Path(...)):
    file_path = os.path.join(DOCS_DIR, f"{doc_id}.pdf")
    if not os.path.exists(file_path):
        raise HTTPException(status_code=404, detail="Document not found")

    try:
        # The streaming logic must be implemented here to properly yield file chunks using async/best practices
        pass
    except Exception:
        # Exception handling logic should be handled here gracefully
        pass
