import numpy as np
import pandas as pd

def read_excel():
    dataframe1 = pd.read_excel('C:\\Users\\Mohan\\PycharmProjects\\pythonProject\\TestCode\\Testdata\\KeyData.xlsx',
                               dtype={'element_name': str, 'value': str})

    return dataframe1.to_dict("records")


# print(dataframe1)

data = read_excel()
for d in data:
    if d["value"] is not np.NAN:
        exec(d["element_name"] + '_val=str("' + d["value"] + '")')
