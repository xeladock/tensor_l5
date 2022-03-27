try:
    with open ('/tmp/buffer', 'r') as data: data=data.read().splitlines()[-1]
    raw=data.split(' ')[2:]
    raw=[raw[5],[item[1:] for item in raw][0], [item[:-1] for item in raw][1], raw[2], [item[:-1] for item in raw][3] ,raw[-2],raw[-1]]
    print("dd_copying_metric{time_progress="+"\""+raw[0]+" sec\", " \
        "read_bytes="+"\""+raw[1],raw[2]+"\", " \
         "written_bytes="+"\""+raw[3],raw[4]+"\", " \
          "speed="+"\""+raw[5],raw[6]+"\"}" \
      ) 
except:
    print('Waiting for data from client...')
