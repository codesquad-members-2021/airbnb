import styled from 'styled-components';
import { ITextCotnentInfo } from '../../common/reference';
import {
  cssSectionSize,
} from '../../common/styles/CommonStyledCSS';

const MainContentInfo = ({ contentInfoItems }: ITextCotnentInfo) => {
  return (
    <MainContentInfoBlock>
      {Object.keys(contentInfoItems).map((contentType, i) => (
        <MainContentInfoList key={i}>
          {/* 대분류 */}
          <MainContentInfoTitleItem>
            {contentInfoItems[contentType].subject}
          </MainContentInfoTitleItem>

          {/* 소분류들 */}
          {contentInfoItems[contentType].strItems.map((item, i) => (
            <MainContentInfoItem key={i}>
              {item}
            </MainContentInfoItem>
          ))}
        </MainContentInfoList>
      ))}
    </MainContentInfoBlock>
  );
};

export default MainContentInfo;

// --- Styled Components ---
const MainContentInfoBlock = styled.div`
  ${cssSectionSize};
  margin: 0 auto;
  padding: 80px;

  display: flex;
  justify-content: space-between;
  align-items: flex-start;
`;

const MainContentInfoList = styled.ul`
  font-size:${({ theme }) => theme.fontSize.L};
`;


const MainContentInfoTitleItem = styled.li`
  font-weight: ${({ theme }) => theme.fontWeight.bold};
`;

const MainContentInfoItem = styled.li`
  & + & {
    margin-top: 16px;
  }
  ${MainContentInfoTitleItem} + & {
    margin-top: 16px;
  }
`;

