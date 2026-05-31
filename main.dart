import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.grey[50], // خلفية هادية مريحة
        colorScheme: const ColorScheme.light(
          primary: Colors.teal, // لون أساسي هادئ ومريح للعين
          surface: Colors.white, // لون البطاقات
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.grey[850]), // نص مريح للقراءة
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "منصه اون لاين",
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
          centerTitle: true,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("العميد فى الكيماء")),
                PopupMenuItem(child: Text("أ/محمود نادي برعى")),
                PopupMenuItem(child: Text("محاضرات مجانيه")),
                PopupMenuItem(child: Text("محاضرات مدفوعه")),
                PopupMenuItem(
                  child: Row(
                    children: [Icon(Icons.phone), Text("01040157976")],
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.teal,
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: Colors.teal),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 400,
                      right: 5,
                      left: 5,
                    ),
                    child: SizedBox(
                      height: 200,
                      width: 400,
                      child: Image.network(
                        "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSEhMVFRUXGBcYGBcXFhUVGhgXGhYXFxcXGBUYHSggGBolGxcaITEhJSkrLi4uFyAzODMtNygtLisBCgoKDg0OGxAQGy0lICYtLy0vKy8tLS0rLS0vLS0tLS0tLS0uLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKgBLAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQMEBQYCBwj/xAA/EAABAwIEAwYDBgUDAwUAAAABAAIRAyEEEjFBBVFhEyJxgZGhBjKxQlJywdHwFCNi4fEzgoMHktIWQ3Oisv/EABoBAAIDAQEAAAAAAAAAAAAAAAACAQMEBQb/xAAsEQACAgICAQIEBgMBAAAAAAAAAQIRAyESMQQTQQVRcYEUIjJhkaGx4fAV/9oADAMBAAIRAxEAPwDyRCEJhQQhCABCEIAEIQgAQhCABCEqmgESoQpoLBCVEKaIsRCVCKCxEJU7QZIceTfqQEJCylSsZQlK6Y1RQ1nEIXRCAyUUHJHKF3ltK5RQJiJEqFBIiEqRQAIQlAQAiEqRAAhCEACEIQAIQhAAhCEACEIQAIQhAAlQhNQAhKhNRFghKhSkI2IlSwiE6iK5CIXUIAU8SORzCepGGu6lvtJXJb6LsDu/vy+iFEWUtDMXVvQwbRSE/M4mT5CAoOFoyRzOnQDV31A6q7dT/lt8T+SjiLPLTpFK/CcjKbZTLjlAVxUolosLmwHVFfBdlT/rqhxbzyCczv8AcRlHQFGkJzb2UtaJgaCw69fP9E0U7WbBLdxY+KbhK0aIvRyhLCEtD2coXYYu8sdT7D9VFA5JDeXn6JCV24blcuEeP7soaJTs4QlSJRgQhCABCEIAEIQgAQhCABCEsWlACJUITIASoQmSFbBKhdAJ1ERsQBKArz4e4OKpD6gORzslNtx2lQg8r5W6k84HOKnEUcro21E8jp57HqCnjXRW5DSVEKfhOHGr2bafzvcW3MDWxnYJ6oS7ICdpU7T6JW0DmykEEGCDqDMERzUt7RADRp+x4KaFciE86CAInTe+p67J6nRBHenLMmNYA0HUkgDxTlbDEVCyJOYiBebxAG6tK3Cy0Bj+64SS3ckkAW2UPQK3sj8OoklzyB90AaACLDoLDyKvcJhMwE6CSfCyMHg2thoExG+vP3laTDYIdkBFhJfG5+y0eE6856KnJOuhsWLk3J9FPw/hrX1M9U5WBrnuP3KLfnd+I/KPMrI8W4oa2IdWjKCYa3ZtMDK1g8G28ZWo+NcWaNL+F0qVSH19oa3/AE6Q6SP/AK8nLFU4kTpI/YUY4t/mY05pLihmsZcTzuuITuRP4TAPqGGiANXO7oHify1VjQnqJIhQnKVEu8Of71KtsLwUuc/Me6w5AbjO+HFrW+IaT6c0rqVhaP3y9UtJi5M/BfUgCnsNN+ZXDqe5U/sff6D9hRK5HkPc/opaKoTcmRHnf06dU0u3XukhUtHQjpHMJE5UbBhNqGh07BIlSKCQQhCgAQhCABCEIA6psJIA1Nl1VIJtoLD9fPXzTre4wn7TgWjo37R8/l8C5R1KAEqcq0HNgkQCAQeYIkexB802nQrYLoN3SsbKeDe6fEfR36KyMSqUhmFY8F4Ya78tw0QXuGoB0Am2YmwHidAVFw9Avs35iQAINxcuM7RHv0W34LSZSZAPdaC5x3I0fUI6/KP7SWk6QquTUV7nPBK7X42gQAKNE5WfdsDETreD4CTdUPEaIdeNg4eDhmy+WniCplPHh1bMxuSnTEMZyaIuTu46k8yqxtXadNPVTFbFlFKCS+Y1gsC+q7LSpOqOgmGNc4wLkwNlb8Pwp7HM35pbprlPI7Xg+Ss/grCvZUdUBAa8FgNxmEODmjcwS0xyFtQpVSm/vONjnIqA37xBmdiDe/XqjlboqzQccal8yJ8cYBtPFMxDGjs8Yxldp2DnFpqgdc0n/kVHw5omoDvlZH/I0n/8e69FxmBGK4O3ICX4Gqbi/cs97OYAp1Af+MLzigIxEc6jvZxA/NTB2qJkun8y5wuEjHudsyoI/E95DfQZneLAn6WFc+pAGYiL+8k8v7Kz4hh8uK5DOx5PNxawwOcAeRLlO4ZhHR3RZw8OQHill1Yql7ERmDyxAvp4mZ9LrZfCuADsrjdrL/ifOvgNR5Klo0GDMS4GBAjcmYA9/Q8wtZgm5MDWe0wcroPImm0D3KzNqTpm1qUMWkedfHBo4x76zczcoGUwJjMGgQDdpBG9iPGcg3hQyuLarZAJ74yTtDTJE+JH5HYHAOFKq2JOUQAdgc155/qslicLVeSA10DW0NHidPMlXwXFVZlnNzk5UQ8FgWOME5nbNuAf9w18LeOy0GDwD3gNaO635naNHMCNraDxVXgGsZLvngXOjfwgamesWmxXoorEMym4DdgBFtgLQplLZj8tcYJmLxlDJiMNRFyXtJtBkw0E+AL/AGTOOwZY9zSIjboRI9itk/h9BwGIc4teHVGsIEgAlwuPzkadVT8aaM2Yua7KHSRvlkix3lVxmuVDeRjf4eEv+9jK44Ze7vF+g/uVUYo7e3IK0e0uceQkk+Gp8gq2o3MdNdvoFYRidESE/h6dsx2Ijxufy90rKMmE7WEN6bJaNDyvoguXMJxIQkaNMJjaRdFIUrL0xEiVIlJBC6ISEIARPYajmPQXPrH78021s+kp9tSGZZiSCY1PL9/sykBzWJc6fIDWB5b/AN09gcMH1GU9S5wHQDc9YEmOijF/KwVzwWiGU3Yg/NIazXQh+d/q2PJyl6QRXKR1xlsVSM2ZrhA5ABwDbbQ3KVW/wLiC5gzZfmAuQCJDhzaf3zU/FYmnVaYF2+mXmNzoPZXPwHQLsQxkSe8YA0DQXnNy0Ov3jzU3UbGjjTnV6MowWUimROli5ttdnD81ouO4Rgc5wYAA7KQ3unQXMfaJzT1HVVGDyB2YSSHNgECAZ1JGv6kK+Mk0ZJxcXsn8Fp06YIf/AKjhBi5aPu23mJ5mAuOI8Tu6kwQNXwZkizWB3Jo9SSY5nFiKINRmtX5T92fmA3kXvtLd9KbDwGm3MaxsFMVewquiTRqQXfhP79l1g8K+oTk2BkzEdPFcYLDZ3tBe1oLgCSdAbE2B2VricbSphrKWgBJO7nHU+g8tNk1kqEp0i/wbTTwNJpBzNdUkWg53H/xCMDjjUqAOHzAtJkd4Qct9A6Ygn7omyo8fxs1BlYMg7ot3hYRYncxPUlVH8ebkOIIjxsQNfNVqO7N8sS4KLfR718C4enQY9urazxm+6XQQXEGcpcIBGkwqV3/TnA0Kr6tWs+o/M99OkIptAzFzA8gl0AwC7M0HlsvM+D/EtenBa93d72sb3HRbnGcRDHZ6j5DjmL5DtdDJubbAhI4uL77Ll4HrR5Qp666OuwY2qC8g1CS42zOJEyZzEMbOwM7KfVdEt3Ag7wY7wnnMj92z2N4tlr95jA8HKSw3gGJDbZh1jZTe0cxjcwIJu2bE5nEAn3Pkm77OTm8XJij1uysxfFMrh0JvtmtmP0H+1eo4PFUW4CazmtZUJFzGugEbwPZeKcQwpdUAvAB23JM78oW3xmNIwuDo7tBe6RoRDGkdfm9VXOG1Rqz54qHH5a/kouI4p7O3IIcM7GA6Sw54idJDRqN1SccrlrKURLsziAflgwAY31NjuN1e8RogYeo6IILTMWHeEeEZj6rFcRa97Gkd5oL7tuAO7E8jbRWx2cnHbdo7r4p9Rgp1HTMkOJHdNg0eFj/3TsvX2UAadrgjxGnNeGhlrrefAtSo97Axzg0Zg8TY5W2luknu3UT0hPJxvIu+jYMwwNPszpHvrPqsjjMG4vDBfcjqbx6Qt4zCl1mba9B+vRQMHgwXAD56jru3DT8xHLcDyWbnxtlSU5RUfYwnHuGfw1JtN0dpV70AyWU2nQ/1F/p2fUhUmAw8vHS60/xnNbGSwSHQ2mBpla91NoHTu+6nYX4VNF7g52b5bgRsCbeJ9lYsqjFX2xnjlJNQWkY3FYbIT/VfyKh42nAA8z+S0vFMIXVoA6KpqUpeT1t9E6kmipScJVIo30yDCbIV5UwRe4BolxsAN/8AFzO0KtxeGcwlrgQRsVFmvHlshELghPZU2QlZuxys4QuiEraZOiQuTOUuZclIpsYmUKTcpi7iWxtDYdm8b5fQqTheGmozMxskPymJk2FwJ5uHlyVdTcRPLdaX4dxoAcySAdY5nKBvezdd4USlS0WYoKcqZWYrhWWAMxMd6BOV3QRJHXodFfccfmoU6dOmWCmzu65iWkd5xt3iC+w+8qHih/muO19f0Up1cuphxN8xEdAGkT6qX7Msx49yidcLw78wJyukEEFzS4Dqfm167LcfC4ZQpuqHI10ljQxvzR80T1sTvC87LzpJDRq4a9AOv012WpZxXs2sYKYLQ20A28/11lU5pa0bvExJN2jc1eGYHE4ZzqrnUnlwZ2rWzfL3c7ftiDGgNtVgT8IYilXaWBlelmH86m4GmBN+0JeOzdGzh4ZlouHYouwrjJGZ4Nh93M02HRZylxdzKhy52kGNXMnS5LYI8P1U4crSaDyvh6lJO+x3i/D5pNouNPP9kBzSW1BpMWh4t6HQFZ3D4WxEG4O19J300jzWneRWe17qdNkEZnA5RzADACCbWsOaTi1Km8OqS2C4d5jdIicwaPm37yd+Slorx/CWrc3oydBsPadYIMciOu6h1DfyP0VhxTCupOIkOie80yOptofFVrILtbTstHqXszZ8UcX5ESKWLsbCwgHxm64DwRJsZ25WJJ8wFGMdfqF0BsT4fueqr5szK0dB2xne3lsN/FafitJwZTAaXwxrTdwcco7MmBqO6T5rN4V7czcwJAIPgAZPlANlpeG4wtoMLwHtGdrSHQSZL4DjcA54MxlvoRCRyZt8OcYtqTaTRHqcSa7K0sh4kNJJJaJPeg6k/lO6t2Yuo2mHuJc1kP1c6W3zASbGY5RJKzYcXPNZzXAv1HJ0bAiTYbK2djHuH8smlkAAd9p1gCIiwnx3TxyV2bMeGWWNPdknhnEKtSo11RrGh0GYI2HyiZIGkgWXqfCcEyvQDHNBgkyR0bpGn915rgsIA7PVa1xkB1Smchk8wRlcddADY3XqnB67GsAY4GeYg6CNbHyVWXPGuxcnw+ME247/AKK/jXwi51CpTpmc7HABxAObKY72huRyXhvEMNVo5WVWPpPBeQHAsP2RI5jqLL6MrcfFJ4bUp1L/AGi3K3oATr5LLV6+DrVH4d5aWk5mtqAOgG4Bpu1A0DhdsWI2ph5XB72Yf/Nc0+GqPHMPXc6xgjUkjbcki585uvRP+nDKbRWqv7jIawTuSZNwLWjXmFx8U/BtOhTFSjDQXAQHZmaEggO748y4Ceas+BcNDcE1guS4vef6iOvp5K3L5MXjtGFeDP1HGS6Vmzp4gGAwANtEX85m6qH4bs8SHEn+YCGc5Ig66QPdwVLw6pUoGQ4kfckQfXTxF1Y1sVUrsDoDXsLSIG4kwD1WN5Euh14sp6a660M4rgwa6g77WV7PCar7+MH6rQjCio4u5x6TlHsPZZnhmLaHy4kiSbzMzt7LXcIxTHsaWzrF9fm3hUZMjs2R8RRjS/b/AAZHGcEPaVCBpMfSyx2MwcEwNLWXsGJw5c15GrtPFZKtw80arXvbZpBmxH+fFW4fJa7Ob5fw+1r7mfp8MdQpuLh/MeMn4QbOb0MTP+VRcWjMWuaHeelpMHUf2Wp4hjXVC+Xd2S7prqet1keKVRPiteGbk9nIy4eEriUVfC7tMjkdf7qEWq0qPHsfoojSHOEjl/habNeKTZEITtN8DU+RhFUCTGkmE2RKVmxOzl1zJN0mVdMbv9E81pJF/f8AUpW6N0MdjVWkRExcA2I0Kewri1rj+Hro6fyT3EWnPBvDaY0G1Nqf4dgXPkAQLSSIAv49VW5rjbL8eB+pSIWIJc8u5uJHmZhSKNN+kGAZ0P72WioYJjAO5L9yQ5w6aWB8VKfwQObMkk3+YQ3pln36KiXkro62HwEnyb2Zt7pAaQY2ufdTm4xwADYi0ydY5Hb0TlfhZa6NvB//AIwnKNEMMuM9IDfVxFlW5nSx+M7NThaWbC04daXGZIkkm3OyoDhn5j/KDzP2w2oI5QZt6HkrHB4wCkdGwbXDhcgaj1TPG60tDxrGWOZEx6hURlJM1fhl00PYLDNewt7HsYm4zObJ1s45h6lZDH8Mr03Oc2DNu6dR1aYnwvqrJ1Z1NoEwTe0iw6jmVEdxSs3eoBzzkj81pxuSdmXyvFwyjUm19Bomq9wY2zn2tIMk92OWxXNak00uzIpF4dPaMdSLicsEOyuktnSBNpOt+6/GXuvLpBvLnXvayg4zF1c0B7yDBbc6G489vEFa4t0cPzsWJNNO/wByKaL22yGTEAAmdUGg/wC44f7D+i7xFd0ZC4k/akzf7vgPr4BRbckxyWkTKWFqOJhp0JNtBIBJ9VOwdMlj2ueGAEOaMwJMAhwytk5iCDp9lUpStdodxvyi48EbGhOMfay3wdSlSfmzE2MBoJjNYkuMEmCdvorThzxVLiC0x3u9DBFgLATbRZc1JMm06xv+idpVjPdHj4bquUTreF8Q9LXt8jdVOO5G/wAOXte1w74ptgZDY3LRmMbjdWOG+JqAD6VEE06cCmXOId2f9V9jbw8F57jMXYASTEbCBcxbxUfCkzmvHRI8aktmyfmx9bjFX/R6Xwv44qMeW0STTA7/AGjnPZfYNeTA8IlXHEsLw/H0u3qYZ7XtIaX4Zwa5rSTDuzecroeY0nvAjW3mNKsWAtHek3NgTy/PWVqvhX4hp0axp1TlpPzNeHSBe05tAItJjY7KtJp3EnNig48np/to0nA+BNqh1OnjBiGBsNp1mOp1qbjOWRUu7fQgWsFPweHqNYWOpuBGvdgdSIkKsxuPOHa+iHNeXOJaYBHZEDK8TNyNCOvJSPhr4geLF5PjeY0v0WXL+YmGKai3B8l7X3RKxNFjm2F+puPIap/gGGgkAxJ8RboUnEuKvqaNb5tg/wDcEzgsW+noRrcRI8rrO0+geC43VMZx1Il5c2Lk289v0UnhuN7OJAEOvtHildUbcxOp/YTeY1m94EXtMj2OqjfuJPEorSLzD8TBG/1HqFS8erEjW0mw9L7BS6ANO4tAi8XHVR+JY/D37rwTrDcwKiL2ZM2G00jIY4NgzLfcdSVQVqOc2mPVaPH8PFQyww28/wCNioTOHloN7AW/yujjypI4PkeLzfRk8ZhSNBb6KHSZBuYOo8ZEfqtBjqJ3t++SqDRM2EQtsZpo56xyjKqIVSlAt/lMkKxdSixGv1UR7RKlOy2TceyJmTlOsQRBi3X8lwGJ2lQE3MKG0dSEZt6HW4ppcS+XTH5CZnkFatbQILmktLWzzBuBAkW13UFzWUqrg4B0ERytBVqziD6mYMptgjKTBFpmOWoHosuR9NLR0sEXtSav6bIDeOOsATFrEAx6rnEcae4FokAmRcgjW0i8X06KxbwhsjM5ouLA/wBlOq/C7Cx0OaHG7cukcpOpuq3mwxfRpXj+XJakZWlxB7ZAIg8w0j3T2G4u9nLy7p9rH0U1/BGMJDnAnaHgDzsVxh+HsBGaPd0mdLWVzyYmhsPi+cmqnX3JL+Oh+UZA0DWIBJ3JgRziyXGcTa54f3wBbKDGgHIdVMxNBndexgsQ11soNzByjwhccTpHMKndDSdCBrF7i6pUo+yOwsfkRi+U7f0Ko4um55Lm1C3cBwE+xj0XNfEYeRHbME3/ANN/KwbDJ8ynqtRzH5w2kQZsWBw9HAieqZrcSqi7XBn/AMbKVJ3XvUmtKuj+xyPJWRJ739P9kgcDOTtO0DWx/wC+x+Hc7eGh4LHH8Lz4KJiaWSix+ZriXODC12bICMxD4HdcCZaCZ7zjsFCLySXOJJ3JJJJ5km5Q+pEN2PzdZ/QRHWVoSZyZt8PzMjEIXVRsHnyPMbLhSYmqYpSIQpIOi397J1ryGmCQJAPXUiR0j3TKdo5IIdIP2SNJ/qGvooZZj706ENTnfyUqljnBvZiMpIJ8pjX8RUaqADp+fupWFrU8jgQc8tLTtHemb9R7pJVXRrwSnHJXOn/2haOOdTJLdSIupXB2DEYilSeSBUfDi0AGIJMeiYpMaCe0bI6fkU5h2v8A4howzXGoKgFMNuS4Hux49bJVW6/k1TWVRuUtX0ScHXfh6bHA5muzQwzALXlp7s7wbiJKs8N8T5YLaJnod08PhZ2EcBioe8i7WGWUz82Rz9S685QAL/MVZcMwtOqQOyAbpq4AeQMBZskoPtWb/EjlcFwlxXyH6/xMS0BzXnujQSNjqNVRYn4seHiGkDrY+4W3dgaWUNaLxBuSOUX2gKDV4BSLpLGciIE/qqMcoL9SNOSORxrHKvsZtnxrUyQWgg8nT68j4FPO+L3Cj3WuEEbmDJG5bHutK34doBjj2bNLWG17ny2TlHg9CpSADKeab5QTaebin9XDX6TmZcHlOX6xOBfFLajAalMm06SdBpAMi6lf+qqIn+S8chkgaxqfqrXBYehRbGTNA208AN9FxV4rhGyD3Ofcj3AWZuDekRwyLt/ev9mL4h8WZz8jGjkGgHbUkgnXwXGF49SLXh8g5ZBAzbgGYnmrfiLcK6Sx7z0dJb5E3UbD4mmxlSBdzYmJi829vRWvhWoszyUr/Wv4KPE4ug6m5xeSRoMkA9TJ/JU5xdMNBAPmBG9rq+xXFWhjmEAh3NomfJVPbUniC0DwHj+q0Q0tpmNq+pL+CvxHGW6AegCrquNBMxqrzGcOouALdek/RU9bh4mAVfjlD2Ks+OXvv6Fc0rqVwhXiqVErG4gPeXCbxr4BLQxJAsTqN1DUjDNn1SOKSovx5ZOdlrT41bK5oIHqh/FXFuTOcszl5HoqQp1ugKreCHyNmP4hl6bJ4rEmVKwmJLTNlU9tyUrtAllj0a8PmO7s3NGh/JaT9rvHz0VTxVwqOgFoaGhok8tSma2PLqFMAkQIPVUtPFNk5gTHK0+KyY8EuzqZPiONVF+5bYfhgeCA4GOWyhV8JRbrU9pXdPHOLcrBl6DX1VRWwxmSZkrRjhK9ujJ5Hmw4rhjTJhZSc9rWuGupEDzPioNWjqSf3uuawiy4dWJaG2gevqtkY0uzj+T5Sm6lFfYUubETPIxpzTa5QijBKd+w4xgM3A9brqnhXO0EwCTF4A1KaUinIYSDqYPgL+kwhj41GXaGS2+6l4HBuqG0WE336LjCYjKZNxuE/SqAaJJN9G/xMOJtSk9fIXGUHCGuaQY15mSmqeBfJlpbGsgi+1ldYVzA2STmaQWjUTMgrWjDvrg1XtDqlUhzzoJAgR0ACzTz+mdT8DjzT5NmAwgF2uBJ1E8916R/0/wDaWfG1GT2bSabQNSe6CAN3Gw6TzS0eD4NhacSM7tmNB+qkcS+JsYX/wAPgKTKLYEvLZPK2wgLPPM56j/ZE8binCOyx4XwSpVZWdiWZe1fnzVCG3cLkN+a0CNFzwvB4enLQ4vDTEwQCfBZziNOrhmuxFfEPrVHCO+6wJ+63QeS7wPGGijnkXFkjjOrjsn14wdZJU66XsjTcSfRcJDXW6wPRN8GDakyTAMR5bndY/EceNTuh3haFK4VxF1HMahImLKHhmlvsoXnwb4xevmaWtjmglpA3F0zXxgDYokZp5arMDFOxFU5e7JNjprzWg4ZhcgbngnNaD1hJKHDvsn8Q8mlr9ywwuJDiO0gCOVyVF45x3LLQ0AC0wLqwrPpNa4yBBgrGcexLM0NeD0CjDHnLozeVmcI6ZV8TxbyZB3iOarWcROhO0FJisSbjRVFZ51XYx4lWzzebyG5flZKxGK5GFD7UppziVw1yupIWEW9tkrt3bE26pp1U80y5ySUtIv4t+5whCFJaCn4aq1rOqgoUNWPCfF2dbrqpaybBTlZ+YygE9CMb1VlNgYCqgpeHxEAg+SWSsvw5FHRedgDRb3gIMlVbKlIOgkkc1AqVyRBKbBRGFdkZM7b0T6tYBwc02CYqYgmfVMOKRO0itZpr3FJSISIEbsEIQgUFLbUDWjmQZ8yoiccoasuxScbaEzXsnp8kxK6lSTDJxJWFxWUj81vuA8YBb3yvNcymHFODGgHmqsmFTVGrB8QnjZ6vU4/hqbcznAkbalYzH/HlQl3YtDZPzG5jZZg4gweqjFVw8SEXb2Rm+JZcmlolYziNWqc1R7nHqfoFacGrZ6TqWaIMj81QSn8JWLXStDimqRz23tmpwdMUyCLnmivxEPqBp+zcdeiphjiN1HpYjvA9UnpXtlXqNaRq63EWBrCyzsxzeqsG8YyPaCbCPrKwOMrEPsbfqn63EMxmdgqn4yZf+Jmomm4p8QzUqQbGVmaWOIeHHSVCqVZMpuVfDFGCpFE5TyO5Fxja7XSQqyo+64a9IXJ0klRUsT5WwJSSklIhs0KNCkpEiFAwIQhAAhCEACWUIQSIlSIQQCEIQAIQhAAhCEAKkQhBJ2yN0hKEIJsREoQggRdl1oQhAHMpEIQQC6zIQgBc6QOQhFhSFe6VyChCAoJQkQgBUiEIAEIQgAQhCAP/9k=",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "العميد فى الكيماء",
                    style: TextStyle(color: Colors.deepOrange, fontSize: 40),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    color: Colors.deepOrange.withValues(alpha: 0.4),
                    width: 200,
                    height: 300,

                    child: Column(
                      children: [
                        Text(
                          "العميد فى الكيماء",
                          style: TextStyle(
                            fontSize: 40,
                            color: CupertinoColors.destructiveRed,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'أ/محمود نادى عميد الكيماء ',
                          style: TextStyle(
                            fontSize: 40,
                            color: const Color.fromARGB(255, 48, 67, 172),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'خبره فى مجال الكيمياء اكثر من عشره سنوات',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'لديه دروس تفاعليه اون لاين تتعدى الف ساعه',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    color: Colors.indigo.withValues(alpha: 0.4),
                    width: 100,
                    height: 400,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text("المنصة المجانية"),
                        SizedBox(height: 50),
                        Container(
                          width: 400,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 400,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("ادخل المنصة"),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.indigo.withValues(alpha: 0.4),
                    width: 100,
                    height: 400,
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text("المنصة االمدفوعة"),
                        SizedBox(height: 20),
                        Text("متابعه حصريه للدروس وحل اسئلة وامتحانات"),
                        SizedBox(height: 20),
                        Text("تقيمات يومية وامتحانات "),
                        SizedBox(height: 50),
                        Container(
                          width: 400,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 400,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("ادخل المنصة"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.indigo.withValues(alpha: 0.4),
                    width: 100,
                    height: 400,
                    child: Column(
                      children: [
                        Text("contact us "),
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.facebook), Text("facebook")],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.email), Text("email")],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.phone_android),
                            Text("01029071432"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
