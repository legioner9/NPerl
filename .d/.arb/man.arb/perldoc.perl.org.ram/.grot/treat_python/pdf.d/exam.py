import re
m = re.search(r'(?<=-)\w+', 'spam-egg')
print(m.group(0))