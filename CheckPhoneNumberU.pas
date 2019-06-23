Unit CheckPhoneNumberU;

Interface
Uses strUtils;

  Function  MyStripOut(s1: String):String;
  Function  FmtPhoneNumber(sTheNumber: String):String;
  Function  FmtMobileNumber(sTheNumber: String):String;

Implementation


Function MyStripout(s1: String):String;
Const
  cInvertedComma = #39;
Var
  s2: String;
Begin
  s2:= AnsiReplaceStr(s1, ' ', '');
  s1:= AnsiReplaceStr(s2, ',', '');
  s2:= AnsiReplaceStr(s1, '"', '');
  s2:= AnsiReplaceStr(s2, cInvertedComma, '');
  Result:= s2;
End;


Function  FmtPhoneNumber(sTheNumber: String):String;
var
  s1: String;
Begin
  s1:= MyStripout(sTheNumber);
  If s1 > '' Then
    Begin
    Case Length(s1) of
       8 : Result:= Copy(s1, 1, 4) + ' ' + Copy(s1, 5, 4);   // No area code
      10 : Result:= Copy(s1, 1, 2) + ' ' + Copy(s1, 3, 4) + ' ' + Copy(s1, 7, 4);  // Area code
      11 : Result:= Copy(s1, 1, 3) + ' ' + Copy(s1, 4, 4) + ' ' + Copy(s1, 8, 4);  // International
    else Result:= 'Error';
    End;
  End;
End;


Function  FmtMobileNumber(sTheNumber: String):String;
Var
  s1: String;
Begin
  s1:= MyStripout(sTheNumber);
  if s1 > '' then
  Begin
    Case Length(s1) of
      10 : Result:= Copy(s1, 1, 4) + ' ' + Copy(s1, 5, 3) + ' ' + Copy(s1, 8, 3);  // No International Code
      11 : Result:= Copy(s1, 1, 2) + ' ' + Copy(s1, 3, 3) + ' ' + Copy(s1, 6, 3) + ' ' + Copy(s1, 9, 3);   // International Code
    else Result:= 'Error';
    End;
  End;
End;




End.

