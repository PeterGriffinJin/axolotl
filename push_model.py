from huggingface_hub import HfApi

model_path = "/home/peterjin/axolotl_output/cello1_qwen7bit_sft/checkpoint-204"
target_path = "Cell-O1/cello1_qwen7bit_sft_4epoch"

# Initialize Hugging Face API
api = HfApi()

# Check if the repository exists; if not, create it
try:
    api.create_repo(repo_id=target_path, exist_ok=True)
    print(f"Repository '{target_path}' is ready.")
except Exception as e:
    print(f"Error creating repository: {e}")

api.upload_folder(
    folder_path=model_path,  # Path to your checkpoint directory
    repo_id=target_path  # Your Hugging Face model repo
)
print("Model upload completed.")
