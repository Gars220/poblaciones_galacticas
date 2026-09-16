import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd

df = pd.read_csv('poblado.csv', skiprows=1)

print(df.head(10))

print(df.keys())

df['index_ug'] = df['u'] - df['g']

plt.figure(figsize=(10,8))
sns.histplot(data=df, x='index_ug', hue='class')
plt.title('Índice de color en galaxias')
plt.xlim(-1,5)
plt.xlabel('Índice u-g')
plt.ylabel('Conteo')
plt.grid(True)
plt.tight_layout()
plt.savefig('indice_ug.png')
