import 'package:flutter/material.dart';
import 'package:streaming_now/screens/account/components/account_button.dart';
import 'package:streaming_now/utils/constants.dart';

class AccountScreenBody extends StatelessWidget {
  const AccountScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNauMlH99zi-9DbBmr-EmPsc9-zDHWZbDgoQ&usqp=CAU',
            ),
            radius: 60,
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'João Vitor',
            style: Theme.of(context).textTheme.headline3,
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'JoVi.Oli04@gmail.com',
            style:
                Theme.of(context).textTheme.headline3!.copyWith(fontSize: 18),
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AccountButton(
                buttonText: 'Alterar Senha',
              ),
              AccountButton(
                buttonText: "Trocar E-mail",
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Color.fromRGBO(0, 0, 0, .5),
                height: 15,
              ),
              InkWell(
                child: Text(
                  'Politica de privacidade',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontSize: 18),
                ),
              ),
              Divider(
                color: Color.fromRGBO(0, 0, 0, .5),
                height: 15,
              ),
              InkWell(
                child: Text(
                  'Termo de uso',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontSize: 18),
                ),
              ),
              Divider(
                color: Color.fromRGBO(0, 0, 0, .5),
                height: 15,
              ),
              InkWell(
                child: Text(
                  'Suporte',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(fontSize: 18),
                ),
              ),
              Divider(
                color: Color.fromRGBO(0, 0, 0, .5),
                height: 15,
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Sair'.toUpperCase(),
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontSize: 18,
                      color: errorAndAccentColor,
                    ),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
