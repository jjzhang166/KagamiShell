
#define RPPRO_ONLY     //support only RunpadPro, comment if you want support of Runpad



class CKShell
{
          #ifdef RPPRO_ONLY
          IRunpadProShell *m_obj;
          #else
          IRunpadShell2 *m_obj;
          #endif

  public:
          CKShell();
          ~CKShell();

          void SetStatusString(const char *text);
          void EnableSheets(const char *name,BOOL b_enable);
          void VipLogin(const char *name);
          void VipLogout();
};

