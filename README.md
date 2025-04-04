## Steps to get started
1. Clone the repository:
   ```bash
   git clone https://github.com/evangelistagrace/hello-rag.git
   ```
    ```bash
    cd hello-rag
    ```
2. Run `docker build -t hello-rag .`
3. Run the container:
   ```bash
   docker run --rm -it \            
   -e OPENAI_API_KEY="<Your OpenAI API Key>" \
   -v "$(pwd)/knowledge_base:/app/data" \
   hello-wordsmith
   ```
4. Ask some questions in the interactive shell:
- `How do I get started with Redis installation on a Mac?` 
- `What are the use cases for redis?`
- `What command can I use to set an object with variable attributes and values?`
5. Add more text-based files into the `knowledge_base` folder and build and run the container again to see if the model can answer questions about the new files.

## Notes
The original project by [wordsmith-ai](https://github.com/wordsmith-ai/hello-wordsmith) depended on chromadb version ~0.5.0 and the version that was installing was causing an error with the chromadb where object. I tried using chromadb v0.4.15 in Docker and it worked.