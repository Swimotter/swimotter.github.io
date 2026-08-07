export const hasDataLayer = () =>
  typeof window !== "undefined" && window.dataLayer;

export const download_resume_analytics = async () => {
  if (hasDataLayer()) {
    window.dataLayer!.push({
      event: "download_resume",
    });
  }
};
