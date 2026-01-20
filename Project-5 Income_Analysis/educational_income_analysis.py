import pandas as pd
import matplotlib.pyplot as plt


df = pd.read_csv('demo_data.csv')



df = pd.read_csv('demo_data.csv')


df['salary'] = df['salary'].str.strip()
df['education'] = df['education'].str.strip()


analysis = df.groupby('education')['salary'].value_counts(normalize=True).unstack()


plt.figure(figsize=(10,6))
analysis['>50K'].sort_values(ascending=False).plot(kind='bar', color='teal')


plt.title('Income Success Rate by Education Level')
plt.ylabel('Percentage (e.g., 0.4 = 40%)')
plt.xlabel('Education Level')
plt.tight_layout()


plt.savefig('research_result.png')
plt.show()
