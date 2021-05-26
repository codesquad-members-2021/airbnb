import 'styled-components';

interface IFn {
    (param: number | string | undefined): string;
}

export interface DefaultTheme {
    LayerTheme: {
        position: string;
        top: string;
        left: string;
        border: string;
        width: IFn;
        height: string;
    };
    FlexboxTheme: {
        display: string;
        flexDirection: IFn;
    };
    LayerSize: {
        smHeight: number;
        smWidth: number;
        lgHeight: number;
        lgWidth: number;
        mdHeight: number;
        mdWidth: number;
    };
}
