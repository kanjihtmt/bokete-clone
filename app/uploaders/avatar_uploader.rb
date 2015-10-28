class AvatarUploader < ImageUploader
  process resize_to_fit: [180, 180]
end
