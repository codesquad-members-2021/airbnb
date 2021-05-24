import styled from 'styled-components';
import { ITextFooter } from '../../util/reference';
import { cssSectionSize } from '../../util/styles/CommonStyledCSS';

const Footer = ({ footerItems }: ITextFooter) => {
  return (
    <FooterLayout>
      <FooterList>
        {footerItems.map((strItem, i) => (
          <FooterItem key={i}>{strItem}</FooterItem>
        ))}
      </FooterList>
    </FooterLayout>
  );
};

export default Footer;

// --- Styled Components ---
const FooterLayout = styled.div`
  ${cssSectionSize};
  margin: 0 auto;
  padding: 24px 0;

  display: flex;
  border-top: 1px solid ${({ theme }) => theme.colors.gray5};
`;

const FooterList = styled.ul`
  display: flex;
  font-size: ${({ theme }) => theme.fontSize.L};
  justify-content: flex-start;
`;

const FooterItem = styled.li`
  & + & {
    &:before {
      content: '・';
      margin: 0 16px;
    }
  }
`;
