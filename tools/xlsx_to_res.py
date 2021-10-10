import pandas as pd
from pandas.io import excel

if __name__ == "__main__":
    # 讀入excel檔案名稱
    excelFilePath = input('請輸入 excel 檔案路徑：')
    fileName = excelFilePath.split('/')[-1].split('.')[-2]
    responseFileName = fileName + '.res'

    # Excel format and response file format
    columns = {
        'Question': 'question',
        'Response': 'response',
        'Topic（R）': 'topic',
        '#Intent Label (R)': 'intent label',
        'keywords (Q)': 'Keywords',
        'Required (Q)': 'required',
        'On Repeat': 'on repeat',
        'Previous': 'previous',
        'Require Previous': 'require previous',
        'Next': 'next'
    }

    # 開啟excel檔案
    df = pd.read_excel(excelFilePath)

    # 開啟response file檔案
    with open(responseFileName, 'w') as responseFile:
        # 讀入excel每筆Question Response資料
        for row in range(df.shape[0]):

            # 資料整理
            QRPair = df.iloc[row, :].drop("Unnamed: 0").dropna()
            if QRPair.empty: break

            # 讀入 Question & Response
            responseFile.write(f"{QRPair['Question']}\n")
            responseFile.write(f"{QRPair['Response']}\n")

            # 讀入 metadata
            QRPair = QRPair.drop(['Question', 'Response'])
            for index, value in QRPair.items():
                # [metadata] On repeat 處理
                if index == "On Repeat":
                    for sentence in value.split('/'):
                        if sentence.strip() != "":
                            responseFile.write(
                                f"{columns[index]}: {sentence.strip()}\n")
                else:
                    responseFile.write(f"{columns[index]}: {value}\n")

            # Question Response 換行
            responseFile.write("\n")
