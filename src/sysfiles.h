/****************************************************************************
**
*W  sysfiles.c                  GAP source                       Frank Celler
*W                                                         & Martin Schoenert
**
*H  @(#)$Id$
**
*Y  Copyright (C)  1996,  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
**
**  The  file 'system.c'  declares  all operating system  dependent functions
**  except file/stream handling which is done in "sysfiles.h".
*/
#ifdef  INCLUDE_DECLARATION_PART
char * Revision_sysfiles_h =
   "@(#)$Id$";
#endif



extern void syWinPut (
            Int                 fid,
            Char *              cmd,
            Char *              str );


extern Char   syPrompt [256];         /* characters alread on the line   */
extern UInt   syNrchar;               /* nr of chars already on the line */


/****************************************************************************
**


*F * * * * * * * * * * * * system error messages  * * * * * * * * * * * * * *
*/


/****************************************************************************
**

*V  SyLastErrorNo . . . . . . . . . . . . . . . . . . . . . last error number
*/
extern Int SyLastErrorNo;


/****************************************************************************
**
*V  SyLastErrorMessage  . . . . . . . . . . . . . . . . .  last error message
*/
extern Char SyLastErrorMessage [ 1024 ];


/****************************************************************************
**
*F  SyClearErrorNo()  . . . . . . . . . . . . . . . . .  clear error messages
*/
extern void SyClearErrorNo ( void );


/****************************************************************************
**
*F  SySetErrorNo()  . . . . . . . . . . . . . . . . . . . . set error message
*/
extern void SySetErrorNo ( void );


/****************************************************************************
**

*F  IS_SPEC( <C> )  . . . . . . . . . . . . . . . . . . .  is <C> a separator
*/
#define IS_SEP(C)       (!IsAlpha(C) && !IsDigit(C) && (C)!='_')


/****************************************************************************
**
*F  SyFileno( <fid> ) . . . . . . . . . . . . . . get operating system fileno
*/
#define SyFileno(fid)	(fid==-1?-1:fileno(syBuf[fid].fp))


/****************************************************************************
**

*E  sysfiles.h  . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
*/
