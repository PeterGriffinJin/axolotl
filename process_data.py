import json

with open('/home/peterjin/mnt/other_data/cell-o1/train_raw.json', 'r') as f:
    raw_data = json.load(f)

print(len(raw_data))
with open('/home/peterjin/mnt/other_data/cell-o1/train.jsonl', 'w') as fout:
    for d in raw_data:
        fout.write(json.dumps({"messages": [{"role": "system", "content": d['system_msg']}, 
                                            {"role": "user", "content": f"{d['user_msg']}\nAnswer:"}, 
                                            {"role": "assistant", "content": d['answer']}]
                                }) + '\n')
