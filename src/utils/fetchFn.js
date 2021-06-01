const ROOT = "http://13.125.170.109:8080/api";

const request = (url, option = {}) => {
  return fetch(`${ROOT}/${url}`, option)
    .then((res) => {
      if (!res.ok) return new Error(res.status);
      return res.json();
    })
    .catch((err) => console.error(err));
};

export const getCloseAttracitons = async () => {
  return await request("closeAttractions");
};
export const getThemeStayContent = async () => {
  return await request("themeStayContent");
};
export const getSearchResult = async ({ location, check, price, guest }) => {
  const { lat, lng } = location;
  const { checkIn, checkOut } = check;
  const { minPrice, maxPrice } = price;
  const { adult, child, infant } = guest;
  return await request(
    `stay/search?lat=${lat}&lng=${lng}&checkIn=${checkIn}&checkOut=${checkOut}&minPrice=${minPrice}&maxPrice=${maxPrice}&adult=${adult}&child=${child}&infant=${infant}?`
  );
};
