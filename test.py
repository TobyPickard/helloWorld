import os 
import json

if os.path.exists('metadata.json'):
    file = open('metadata.json')
    data = json.load(file)
    file.close()
    
    with open('metadata.json','w') as file:
        data['version'] += 0.1
        data['version'] = round(data['version'],1)
        file.write(json.dumps(data,indent=4))
else:
    with open('metadata.json','w') as file:
        version = {"version": 0.1}
        file.write(json.dumps(version, indent=4))

# with open('metadata.json') as file:
#     data = json.load(file)
#     print(data)