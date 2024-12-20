a = '101101'
b = '110011'
suma = bin(int(a,2) + int(b,2))[2:]
proizv = bin(int(a,2)&int(b,2))[2:]
print(proizv,suma)