import styled from 'styled-components';
import { ITextCotnentInfo } from '../../../common/reference';
import {
  cssResetList,
  cssSectionSize,
} from '../../../common/styles/CommonStyledCSS';

const ContentInfo = ({ captions }: ITextCotnentInfo) => {
  return (
    <StyledContentInfo>
      {Object.keys(captions).map((contentType, i) => (
        <ContentInfoList key={i}>
          {/* 대분류 */}
          <ContentInfoItem bold>
            {captions[contentType].subject}
          </ContentInfoItem>

          {/* 소분류들 */}
          {captions[contentType].strItems.map((item, i) => (
            <ContentInfoItem key={i} bold={false}>
              {item}
            </ContentInfoItem>
          ))}
        </ContentInfoList>
      ))}
      <ContentInfoList>
        <ContentInfoItem bold></ContentInfoItem>
      </ContentInfoList>
    </StyledContentInfo>
  );
};

export default ContentInfo;

// --- Styled Components ---
const StyledContentInfo = styled.div`
  ${cssSectionSize};
  margin: 0 auto;
  padding: 80px;

  display: flex;
  justify-content: space-between;
  align-items: flex-start;
`;

const ContentInfoList = styled.ul`
  ${cssResetList}
  font-size:${({ theme }) => theme.fontSize.L};
`;

const ContentInfoItem = styled.li<{ bold: boolean }>`
  font-weight: ${({ theme, bold }) =>
    bold ? theme.fontWeight.bold : theme.fontWeight.normal};

  & + & {
    margin-top: 16px;
  }
`;
