import styled from 'styled-components';
import { ITextFooter } from '../../common/reference';
import { cssSectionSize } from '../../common/styles/CommonStyledCSS';

const MainFooter = ({ footerItems }: ITextFooter) => {
  return (
    <MainFooterBlock>
      <MainFooterList>
        {footerItems.map((strItem, i) => (
          <MainFooterItem key={i}>{strItem}</MainFooterItem>
        ))}
      </MainFooterList>
    </MainFooterBlock>
  );
};

export default MainFooter;

// --- Styled Components ---
const MainFooterBlock = styled.div`
  ${cssSectionSize};
  margin: 0 auto;
  padding: 24px 0;

  display: flex;
  border-top: 1px solid ${({ theme }) => theme.colors.gray5};
`;

const MainFooterList = styled.ul`
  display: flex;
  font-size: ${({ theme }) => theme.fontSize.L};
  justify-content: flex-start;
`;

const MainFooterItem = styled.li`
  & + & {
    &:before {
      content: '・';
      margin: 0 16px;
    }
  }
`;
