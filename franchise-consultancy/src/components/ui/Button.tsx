import Link from 'next/link';
import { ReactNode } from 'react';

interface ButtonProps {
  children: ReactNode;
  href?: string;
  onClick?: () => void;
  variant?: 'primary' | 'secondary' | 'outline' | 'ghost';
  size?: 'sm' | 'md' | 'lg';
  className?: string;
  disabled?: boolean;
  type?: 'button' | 'submit' | 'reset';
}

const Button = ({
  children,
  href,
  onClick,
  variant = 'primary',
  size = 'md',
  className = '',
  disabled = false,
  type = 'button'
}: ButtonProps) => {
  const baseClasses = 'inline-flex items-center justify-center font-medium transition-all duration-300 ease-out focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-warm-coral disabled:opacity-50 disabled:cursor-not-allowed transform hover:scale-105 active:scale-95';

  const variantClasses = {
    primary: 'bg-slate-blue text-white hover:bg-slate-blue-light shadow-lg hover:shadow-xl',
    secondary: 'bg-warm-peach text-white hover:bg-slate-blue shadow-lg hover:shadow-xl',
    outline: 'border-2 border-slate-blue text-slate-blue hover:bg-slate-blue hover:text-white',
    ghost: 'text-slate-blue hover:bg-warm-cream hover:text-deep-charcoal'
  };

  const sizeClasses = {
    sm: 'px-5 py-2.5 text-sm rounded-full',
    md: 'px-8 py-3.5 text-base rounded-full',
    lg: 'px-10 py-4 text-lg rounded-full'
  };

  const combinedClasses = `${baseClasses} ${variantClasses[variant]} ${sizeClasses[size]} ${className}`;

  if (href) {
    return (
      <Link href={href} className={combinedClasses}>
        {children}
      </Link>
    );
  }

  return (
    <button
      type={type}
      onClick={onClick}
      disabled={disabled}
      className={combinedClasses}
    >
      {children}
    </button>
  );
};

export default Button;