program ksdbbackup;

uses
  Forms, Windows,
  main in 'main.pas' {DBBackupForm};

{$R *.res}
{$R resource.res}

  function CheckAdminRights: boolean;
  type TIsUserAnAdmin = function: BOOL stdcall;
  var pIsUserAnAdmin: TIsUserAnAdmin;
    lib: cardinal;
  begin
    Result := true;
    lib := LoadLibrary('shell32.dll');
    if lib <> 0 then
    begin
      pIsUserAnAdmin := GetProcAddress(lib, 'IsUserAnAdmin');
      if @pIsUserAnAdmin <> nil then
      begin
        if not pIsUserAnAdmin() then
        begin
          Result := false;
        end;
      end;
      FreeLibrary(lib);
    end;
  end;

begin
  if not CheckAdminRights then
  begin
    MessageBox(0, 'Для запуска программы требуются права администратора!',
      'Ошибка', MB_OK or MB_ICONERROR);
    Exit;
  end;

  Application.Initialize;
  Application.Title := 'Сохранение или восстановление базы данных KagamiShell';
  Application.CreateForm(TDBBackupForm, DBBackupForm);
  Application.Run;
end.
