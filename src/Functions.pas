unit Functions;

interface

uses
  Windows, SysUtils, Classes, GlobalData, IniFiles, StrUtils;

type
  TFunctions = class(TObject)
    public
      class function GetDBConfig(): TServerConfig;

      class procedure ShowMsg(aText: String; Hndl: Cardinal; aIcon: Cardinal);

      class function VerifyAlphaNumeric(aText: String): Boolean;
  end;

implementation

{ TFunctions }

class function TFunctions.GetDBConfig: TServerConfig;
var
  IniReader: TIniFile;
  Path: String;
begin
  Path := GetCurrentDir + '\config.ini';

  IniReader := TIniFile.Create(Path);
  try
    Result.Hostname := IniReader.ReadString('MYSQL', 'Hostname', '');
    Result.Port := IniReader.ReadInteger('MYSQL', 'Port', 0);
    Result.Database := IniReader.ReadString('MYSQL', 'Database', '');
    Result.Username := IniReader.ReadString('MYSQL', 'Username', '');
    Result.Password := IniReader.ReadString('MYSQL', 'Password', '');
  finally
    FreeAndNil(IniReader);
  end;
end;

class procedure TFunctions.ShowMsg(aText: String; Hndl: Cardinal; aIcon: Cardinal);
begin
  MessageBox(Hndl, PChar(aText), 'WK Test', aIcon);
end;

class function TFunctions.VerifyAlphaNumeric(aText: String): Boolean;
const
  ALPHA_CHARS = ['a' .. 'z', 'A' .. 'Z', '0' .. '9'];
var
  i: Integer;
begin
  Result := False;

  if(Length(aText) = 0) then
    Exit;

  Result := True;

  for I := Low(aText) to High(aText) do
  begin
    if not(CharInSet(aText[i], ALPHA_CHARS)) then
    begin
      Result := False;
      break;
    end;
  end;

end;

end.
