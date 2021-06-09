import styled from 'styled-components';

interface IResponsive {
  children: React.ReactNode;
}

function Responsive({children, ...rest}: IResponsive) {
  return (
    <ResponsiveLayout {...rest}>
      {children}
    </ResponsiveLayout>
  )
}

function ResponsiveFluid({children, ...rest}: IResponsive) {
  return (
    <ResponsiveFluidLayout {...rest}>
      {children}
    </ResponsiveFluidLayout>
  )
}

const ResponsiveLayout = styled.div`
  display: flex;

  @media (min-width: 1400px) {
    width: 1440px;
  }
  @media (max-width: 1440px) {
    max-width: 1440px;
    width: 100%;
  }
  @media (max-width: 768px) {
    max-width: 768px;
    width:100%;
  }
  @media (max-width: 576px) {
    width: 100%;
  }
`

const ResponsiveFluidLayout = styled.div`
  display: flex;

  @media (min-width: 1440px) {
    width: 1440px;
  }
`;

export { ResponsiveFluid };