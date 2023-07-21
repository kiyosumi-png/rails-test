import React, { useEffect, useState } from "react";

type Props = {
  url: string;
};

type Brand = {
  id: string;
  name: string;
};

function Brand({ url }: Props) {
  const [brands, setBrands] = useState<Brand[]>([]);

  useEffect(() => {
    fetch(url).then((res) => {
      res.json().then((data) => {
        setBrands(data);
      });
    });
  }, []);

  return (
    <div>
      {brands.map(({ id, name }) => (
        <p key={id}>{`${id}: ${name}`}</p>
      ))}
    </div>
  );
}

export default Brand;
