unit GlobalData;

interface

uses
  Windows, SysUtils;

type
  TServerConfig = record
    Hostname: String;
    Port: Integer;
    Database: String;
    Username: String;
    Password: String;
  end;

implementation

end.
