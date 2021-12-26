import pandas as pd
from pandas.io import excel
import argparse

if __name__ == "__main__":
    # Parsing arguments
    parser = argparse.ArgumentParser()
    parser.add_argument("input", help="specific the excel file path", type=str)
    parser.add_argument("--output", help="specific the response folder path", type=str)
    args = parser.parse_args()
    if args.output == None:
        args.output = ""
    elif args.output[-1] != "/":
        args.output += "/"

    # 讀入excel檔案名稱
    excelFilePath = args.input
    fileName = excelFilePath.split('/')[-1].split('.')[-2]
    responseFileName = fileName + '.res'

    # Excel format and response file format
    columns = {
        'Question': 'question',
        'Response': 'response',
        'Topic (R)': 'topic',
        '#Intent Label (R)': 'intent label',
        'Keywords (Q)': 'Keywords',
        'Required (Q)': 'required',
        'On Repeat': 'on repeat',
        'Previous': 'previous',
        'Require Previous': 'require previous',
        'Next': 'next',
        'No repeat': 'no repeat',
        'Emotions': 'emotions'
    }

    # 開啟excel檔案
    df = pd.read_excel(excelFilePath)

    # 開啟response file檔案
    with open(args.output + responseFileName, 'w') as responseFile:
        # 讀入excel每筆Question Response資料
        for row in range(df.shape[0]):

            # 資料整理
            QRPair = df.iloc[row, :].dropna()
            if "Unnamed: 0" in df.columns:
                QRPair = QRPair.drop("Unnamed: 0")
            if ' ' in df.columns:
                QRPair = QRPair.drop(' ')    
            if QRPair.empty: break
            ## 刪除前後空白
            for key in QRPair.keys():
                QRPair[key] = str(QRPair[key]).strip()
                

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
