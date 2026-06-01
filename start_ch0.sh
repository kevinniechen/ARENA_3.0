#!/bin/bash
cd "$(dirname "$0")"
source .venv/bin/activate

streamlit run chapter0_fundamentals/instructions/Home.py --server.port 8501 --server.headless true &
cd chapter0_fundamentals/exercises && jupyter notebook --no-browser &

sleep 3
open "http://localhost:8501"
open "$(jupyter notebook list 2>/dev/null | grep http | awk '{print $1}')"

echo "Running — Instructions at localhost:8501, Jupyter at localhost:8888"
echo "Press Ctrl+C to stop both."
wait
