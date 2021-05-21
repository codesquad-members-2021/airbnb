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

export const cssResetList = css`
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  font-size: 100%;
  vertical-align: baseline;
  background: transparent;
  list-style: none;
`;

export const cssImageAuto = css`
  img {
    /* 이미지 크기 보정 */
    max-width: 100%;
    height: auto;
  }
`;

export const cssSectionSize = css`
// 임시, 미디어쿼리쓰면 제거
  width: 1440px;
`;
