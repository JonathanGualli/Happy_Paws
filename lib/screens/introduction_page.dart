import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  bool ultimo = false;

  //* Reservaddo para cuando haga la pagina principal xd
  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.grey);
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF440A67)),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFFF5F5FA),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0xFFF5F5FA),

      allowImplicitScrolling: true,
      autoScrollDuration: 10000,
      infiniteAutoScroll: false,

      // globalHeader: Align(
      //   alignment: Alignment.topRight,
      //   child: SafeArea(
      //       child: Padding(
      //     padding: const EdgeInsets.only(top: 16, right: 16),
      //     child: _buildImage('prueba.jpg', 100),
      //   )),
      // ),

      globalFooter: Container(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 60),
        child: SizedBox(
          width: 323,
          height: 44,
          child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF57419D))),
            child: const Text('Siguiente',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            onPressed: () => {introKey.currentState?.next()},
          ),
        ),
      ),

      pages: [
        PageViewModel(
            title: '¡Aquí amamos a los \nanimales!',
            //image: Image.asset('assets/logo.png'),
            image: _buildImage('logo.png'),
            body: '',
            decoration: pageDecoration.copyWith(
                titleTextStyle: const TextStyle(
                    color: Color(0xFF440A67),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                //titlePadding: EdgeInsets.fromLTRB(0, 50, 0, 25),
                imageFlex: 2,
                imagePadding: const EdgeInsets.fromLTRB(0, 0, 0, 25))),
        PageViewModel(
          title: "¡Bienvenido!",
          body:
              "En Happy Paws podrás encontrar todo para administrar lo que tus mascotas necesitan, desde recordatorios hasta una mascota virtual. ¡Divertete y cuida de tus peluditos!",
          image: _buildImage('Introduction1.jpg', double.infinity),
          decoration: pageDecoration.copyWith(
            imageFlex: 2,
          ),
/*           footer: Container(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 60),
            child: SizedBox(
              width: 323,
              height: 44,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF57419D))),
                child: const Text('Siguiente',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                onPressed: () => {introKey.currentState?.next()},
              ),
            ),
          ), */
        ),
        PageViewModel(
          title: "Registro de Mascotas",
          body: "Para comenzar esta increible aventrua registra a tus mascotas",
          image: _buildImage('Introduction2.png'),
          decoration: pageDecoration.copyWith(
            imageFlex: 2,
          ),
        ),
        PageViewModel(
          title: "Mascota Virtual",
          body:
              "Divertete y disfruta de la compañia de tu adorable amigo virtual",
          image: _buildImage('Introduction3.png'),
          decoration: pageDecoration.copyWith(
              imageFlex: 2, imagePadding: const EdgeInsets.only(bottom: 30)),
        ),
        PageViewModel(
          title: "Recordatorios",
          body:
              "Registra a tus mascotas y administra recordatorios para su hora de comida, baño, medicamentos, y demás.",
          image: _buildImage('Introduction4.png'),
          decoration: pageDecoration.copyWith(
              imageFlex: 2, imagePadding: const EdgeInsets.only(bottom: 30)),
        ),
        /* PageViewModel(
            title: 'ultimo slider',
            body: 'otra descricion',
            image: _buildImage('prueba.jpg'),
            footer: ElevatedButton(
              onPressed: () {
                introKey.currentState?.animateScroll(1);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  )),
              child: const Text(
                'FooButton',
                style: TextStyle(color: Colors.white),
              ),
            ),
            decoration: pageDecoration.copyWith(
              bodyFlex: 6,
              imageFlex: 6,
              safeArea: 80,
            )), */
/*         PageViewModel(
          title: 'la ultima',
          bodyWidget: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('click on', style: bodyStyle),
            ],
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex:
                4, /* 
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.topCenter, */
          ),
          image: _buildImage('Introduction4.png'),
        ), */
      ],

      done: const Text('Iniciar Sesión'),
      onDone: () => {
        const SnackBar(
          content: Text('esta es una prue asdaf adf'),
        )
      },
      onSkip: () => {
        print('prueba'),
      },
      showNextButton: false,
/*       showBackButton: false,
      showSkipButton: true,
      back: const Icon(Icons.arrow_back),
      skip: const Text(
        'skip',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      next: const Icon(Icons.arrow_forward), */
      //curve: Curves.fastLinearToSlowEaseIn,
      //controlsMargin: const EdgeInsets.all(16),
      // controlsPadding: kIsWeb
      //      const EdgeInsets.all(12.0)
      //     : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),

      //controlsPosition: Position.fromLTRB(0, 30, 0, 0),
/*       controlsPosition:
          Position.fromLTRB(0, MediaQuery.of(context).size.height - 100, 0, 0), */
      dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0X3357419D),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          activeColor: Color(0XFF57419D)),

/*       dotsContainerDecorator: const ShapeDecoration(
          color: Colors.black87,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)))), */
    );
  }
}
