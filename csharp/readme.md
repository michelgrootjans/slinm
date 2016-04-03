Run tests
*********
> dnvm use 1.0.0-rc1-update1
> dnu restore
> dnx test
> [optional] dnx-watch test


Alternatives 1:
***************
public int Score {
  get
  {
    var score = 0;
    for(var frame = 1; frame <= 10; frame++){
      score += ScoreFor(frame);
    }
    return score;
  }
}

Alternatives 2:
***************
public int Score {
  get
  {
    return Enumerable.Range(1, 10)
                     .Aggregate(0, (score, frame) => score + ScoreFor(frame));
  }
}
