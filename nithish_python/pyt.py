import openpyxl as op
import pandas as pd
from itertools import islice

def get_training_track(TT):

    if TT == 'C#':
        TT_Name = 'C#'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_C#.xlsx')
    elif TT == 'APP AND PROD TESTING':
        TT_Name = 'App and Prod Testing'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_App&Prod.xlsx')
    elif TT == 'JAVA':
        TT_Name = 'JAVA'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_java.xlsx')
    elif TT == 'PYTHON ATF':
        TT_Name = 'Python ATF'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_Python ATF.xlsx')
    elif TT == 'LINUX BSP':
        TT_Name = 'Linux BSP'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_LINUX_BSP.xlsx')
    elif TT == 'AUTO ECU':
        TT_Name = 'Auto ECU'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_Auto ECU.xlsx')
    elif TT == 'PLH':
        TT_Name = 'PLH'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_PLH.xlsx')
    elif TT == 'M&E':
        TT_Name = 'M&E'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_M&E.xlsx')
    elif TT == 'ICP_CES':
        TT_Name = 'ICP_CES'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_ICP_CES.xlsx')
    elif TT == 'ICP_EMB':
        TT_Name = 'ICP_EMB'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_ICP_EMB.xlsx')
    elif TT == 'TRA EMB-1':
        TT_Name = 'TRA Emb-1'
        xlwriter = pd.ExcelWriter('C:/Users/pc/Downloads/TT_TRA Emb-1.xlsx')
    else:
        print("enter a valid Training track name")

    path = "C:/Users/HP/Downloads/Result_analysis.xlsx"  # path of input excel sheet
    df = pd.read_excel(path)
    try:
        Training_track = df[df['Training Track'] == TT_Name]
        print(Training_track)
        # path for output excelsheet and the new sheet name
        Training_track.to_excel(xlwriter, sheet_name='Sheet1', index=False)
        xlwriter.close()
    except :
        print('''
        Invalid training track name
        The available training tracks are: 
        App and Prod Testing , C# , JAVA , Python ATF , Linux BSP , Auto ECU ,
        PLH , M&E , ICP_CES , ICP_EMB , TRA Emb-1
        ''')