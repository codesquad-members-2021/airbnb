import { css } from 'styled-components';

export const cssMainChildrenMargin = css`
  margin: 0 auto 80px;
`;

export const cssMainChildrenPadding = css`
  padding: 0 80px;
`;

export const cssMainChildren = css`
  ${cssMainChildrenMargin};
  ${cssMainChildrenPadding};
`;

export const cssImageAuto = css`
  img {
    /* 이미지 크기 보정 */
    max-width: 100%;
    height: auto;
  }
`;