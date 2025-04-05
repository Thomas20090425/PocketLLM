# Building:

### Importing the AI Model:
- When building the app, the only model you can use is the models that ends in `.gguf`.
- The AI model that we are using is llama 3b Q3 which can be downloaded from:
  ```
  https://huggingface.co/unsloth/Llama-3.2-3B-Instruct-GGUF/resolve/main/Llama-3.2-3B-Instruct-Q3_K_M.gguf?download=true
  ```
- add the file to /LocaLLM_S-E

### Importing the Runtime:
- The AI runtime we are using can be downloaded from my other forked repo.
  ```
  https://github.com/Thomas20090425/PocketLLM-RT
  ```
- In Xcode, go to `File` - `Add Package Dependencies` - `Search or Enter Package URL` - `Add Package` - `Add Anyway`
- Build!

# Next Steps:
- The AI model should not be loaded upon start up / The AI model should load 1b if a device have ≤ 4GB of ram to prevent from crashing upon start.
- When used on an un supported device, it should prompt user a confirmation of proceeding.
- For ≥6GB ram devices, user have the ability to choose between 1b model, 3b model.
- For ≥8GB ram devices, user have the ability to import models.
- The ability to save questions.

# Tests:
| Device | Ram | Y/N | Model |
| ----------- | ----------- | ----------- | ----------- |
| iPhone 14 Pro | 6GB | Y | 3b |
| iPhone 12 Pro | 6GB | Y | 3b |
| iPad Pro M2 | 8GB | Y | 3b |
| iPhone 12 mini | 4GB | N - Crash Upon Load | 3b |
| iPhone 12 mini | 4GB | Y | 1b |

# Important info:
- We suggest 3b model (≈2GB in file size) for devices with 6GB ram or above, or 1b (≈900MB in file size) models for 3Gb to 4GB ram models.
- WE DO NOT SUPPORT devices with less than 3GB of ram.
- The use of on-device processing of AI models can cause the overheating of the device, and under certain circumstances, it can cuase irreversible danmage to your device. Proceed at your own risk!!!
