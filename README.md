# Task Overview
You are responsible for fixing an issue with the file download endpoint in a FastAPI-based document-sharing backend. Users are experiencing server errors and slow downloads when attempting to download large files, particularly from the `/download/{doc_id}` endpoint. Application logs suggest 'coroutine was never awaited' errors, indicating an improper async I/O pattern. Your objective is to correct the streaming logic so large document downloads work reliably, efficiently, and without runtime errors. The application must run seamlessly in Docker, as per deployment best practices.

# Guidance
- Investigate the file streaming logic in the download endpoint.
- Ensure that file reading uses proper asynchronous patterns compatible with FastAPI and StreamingResponse.
- Pay particular attention to how large files are handled and streamed to avoid blocking or resource exhaustion.
- All streaming operations must handle exceptions gracefully and return appropriate error responses on failure.
- The environment and endpoints should work correctly when run in Docker.

# Objectives
- Identify and resolve the root async I/O problem causing 'coroutine was never awaited' errors.
- Update the download endpoint so that it streams files efficiently and asynchronously, even for large files.
- Ensure the endpoint handles file-not-found and file-read exceptions cleanly.
- Confirm the FastAPI app runs smoothly inside Docker as per the provided setup.

# How to Verify
- Place a large test file in the appropriate directory and request it via the download endpoint.
- Downloads should complete successfully with no server 500 errors or runtime warnings.
- The server logs must not contain unhandled exceptions or coroutine warnings.
- The application should be accessible and stable when running in Docker.