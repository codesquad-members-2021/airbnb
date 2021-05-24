import styled from 'styled-components';
import { ITextCotnentInfo } from '../../util/reference';
import {
  cssSectionSize,
} from '../../util/styles/CommonStyledCSS';

const ContentInfo = ({ contentInfoItems }: ITextCotnentInfo) => {
  return (
    <ContentInfoLayout>
      {Object.keys(contentInfoItems).map((contentType, i) => (
        <ContentInfoList key={i}>
          {/* 대분류 */}
          <ContentInfoTitleItem>
            {contentInfoItems[contentType].subject}
          </ContentInfoTitleItem>

          {/* 소분류들 */}
          {contentInfoItems[contentType].strItems.map((item, i) => (
            <ContentInfoItem key={i}>
              {item}
            </ContentInfoItem>
          ))}
        </ContentInfoList>
      ))}
    </ContentInfoLayout>
  );
};

export default ContentInfo;

// --- Styled Components ---
const ContentInfoLayout = styled.div`
  ${cssSectionSize};
  margin: 0 auto;
  padding: 80px;

  display: flex;
  justify-content: space-between;
  align-items: flex-start;
`;

const ContentInfoList = styled.ul`
  font-size:${({ theme }) => theme.fontSize.L};
`;


const ContentInfoTitleItem = styled.li`
  font-weight: ${({ theme }) => theme.fontWeight.bold};
`;

const ContentInfoItem = styled.li`
  & + & {
    margin-top: 16px;
  }
  ${ContentInfoTitleItem} + & {
    margin-top: 16px;
  }
`;

