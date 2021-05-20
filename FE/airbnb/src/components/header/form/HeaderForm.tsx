import styled from 'styled-components';
import FormColumn from './FormColumn';
import { IoSearch } from 'react-icons/io5';
import HoverBlock from '../HoverBlock';

interface formColumn {
  title: string;
  description: string;
}

const HeaderForm = () => {
  const FORM_COLUMN: formColumn[] = [
    { title: '위치', description: '어디로 여행가세요' },
    { title: '체크인', description: '날짜' },
    { title: '체크아웃', description: '날짜' },
    { title: '요금', description: '금액대 설정' },
    { title: '요금', description: '게스트 추가' },
  ];

  return (
    <StyledHeaderForm>
      <HoverBlock className='form__column location' color='gray4'>
        <FormColumn title={FORM_COLUMN[0].title} description={FORM_COLUMN[0].description} />
      </HoverBlock>
      <HoverBlock className='form__column reservation' color='gray4'>
        <FormColumn title={FORM_COLUMN[1].title} description={FORM_COLUMN[1].description} />
      </HoverBlock>
      <HoverBlock className='form__column reservation' color='gray4'>
        <FormColumn title={FORM_COLUMN[2].title} description={FORM_COLUMN[2].description} />
      </HoverBlock>
      <HoverBlock className='form__column price' color='gray4'>
        <FormColumn title={FORM_COLUMN[3].title} description={FORM_COLUMN[3].description} />
      </HoverBlock>
      <HoverBlock className='form__column guest' color='gray4'>
        <FormColumn title={FORM_COLUMN[4].title} description={FORM_COLUMN[4].description} />
        <div className='search-icon'>
          <IoSearch />
        </div>
      </HoverBlock>
    </StyledHeaderForm>
  );
};

interface StyleProps {}

const StyledHeaderForm = styled.div<StyleProps>`
  display: grid;
  grid-template-columns: 1fr 0.5fr 0.5fr 0.5fr 0.7fr;
  margin: 0 auto;
  max-width: 916px;
  border: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  border-radius: 60px;
  background-color: ${({ theme }) => theme.colors.white};
  .form__column {
    padding: 1rem;
    border-radius: 3rem;
  }
  .location {
    padding-left: 2rem;
  }
  .reservation {
    display: flex;
    & > div {
      flex: 1;
    }
  }
  .guest {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-right: 0.5rem;
    .search-icon {
      display: flex;
      align-items: center;
      justify-content: center;
      background-color: ${({ theme }) => theme.colors.red};
      color: ${({ theme }) => theme.colors.white};
      font-size: 1.5rem;
      width: 40px;
      height: 40px;
      border-radius: 100%;
    }
  }
  & > div {
    position: relative;
  }
  & > div:not(:last-child)::before {
    position: absolute;
    height: 3rem;
    right: 0;
    top: 1rem;
    content: '';
    border-right: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
  & > div:not(:last-child):hover {
    &::before {
      border-right: none;
    }
  }
`;

export default HeaderForm;
