void main () {
  List<String> players = ['Player 1', 'Player 2', 'Player 3', 'Player 4'];
  int currentPlayerIndex = 0;
  int clap = 0;
  int rool = 0;
  int ahh = 0;
  List<int> clapCountsByPlayer = [0, 0, 0, 0];
  int maxClapCount = 0;
  String playerWithMaxClap = '';



  for (int i = 1; i <= 100; i++) {
    String currentPlayer = players[currentPlayerIndex];
    currentPlayerIndex = (currentPlayerIndex + 1) % players.length;

    if (i % 30 == 0) {
      print('$currentPlayer:ahh');
      ahh++;
    } else if (i % 10 == 0) {
      print('$currentPlayer:rool');
      rool++;
    } else if (i % 3 == 0) {
      print('$currentPlayer:clap');
      clap++;
      clapCountsByPlayer[currentPlayerIndex]++;
    } else {
      print('$currentPlayer: $i');
    }
  }

  for (int i = 0; i <players.length; i++) {
    int count = clapCountsByPlayer[i];
    // print('${players[i]} clap 총 갯수: $count');

    if (count > maxClapCount) {
      maxClapCount = count;
      playerWithMaxClap = players[i];
    }

  }



    print('clap의 총 갯수 : $clap');
    print('rool 총 갯수 : $rool');
    print('ahh 총 갯수 : $ahh');
    print('Player1 clap 총 갯수: ${clapCountsByPlayer[0]}');
    print('Player2 clap 총 갯수: ${clapCountsByPlayer[1]}');
    print('Player3 clap 총 갯수: ${clapCountsByPlayer[2]}');
    print('Player4 clap 총 갯수: ${clapCountsByPlayer[3]}');
  print('가장 많은 clap을 출력한 플레이어: $playerWithMaxClap');
  }
























