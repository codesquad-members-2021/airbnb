import 'styled-components';

// ThemeProvider를 사용하기 위해 DefaultTheme 커스텀
declare module 'styled-components' {
  export interface DefaultTheme {
    fontFamily: string;
    fontWeight: {
        [name : string]: string,
    }
    fontSize: {
        [name : string]: string,
    }
    colors: {
        [name : string]: string,
    }
  }
}