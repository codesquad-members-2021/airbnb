import { ReactElement } from 'react';
import styled from 'styled-components';
import HeaderTab from './HeaderTab';

const HeaderTabList = () => {
  const TAB_LIST = ['숙소', '체험', '온라인 체험'];
  const tabList: ReactElement[] = TAB_LIST.map((title: string, idx: number) => (
    <HeaderTab key={title + idx} {...{ title, idx }} />
  ));
  return <StyledHeaderTabList>{tabList}</StyledHeaderTabList>;
};

export default HeaderTabList;

const StyledHeaderTabList = styled.div`
  margin-left: 200px;
  cursor: pointer;
  width: 11rem;
  display: flex;
  justify-content: space-between;
`;
