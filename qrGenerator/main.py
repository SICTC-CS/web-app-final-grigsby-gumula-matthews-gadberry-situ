import qrcode
import random as r

colors = ["red","orange","yellow","green","blue","purple","pink","black","brown"]

def makeQR(url,imgName):

    qr = qrcode.QRCode(version=1,error_correction=qrcode.constants.ERROR_CORRECT_Q,box_size=10,border=4,)

    qr.add_data(url)
    qr.make(fit=True)

    color = r.choice(colors)

    image = qr.make_image(fill_color=color, back_color="white")
    image.save(f"{imgName}.png")

url = input("Enter URL: ")
print("What would you like the img to be called?")
imgName = input("Enter img Name: ")

makeQR(url,imgName)