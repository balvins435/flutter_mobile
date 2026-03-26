import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers.dart';
import '../../../shared/widgets/ui.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authControllerProvider);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const SizedBox(height: 24),
            Text('SmartInvoice', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 8),
            Text('A mobile workspace for your invoices, expenses, payments, and tax workflows.'),
            const SizedBox(height: 24),
            const SectionCard(
              child: Text('Use your existing SmartInvoice backend account. Your financial logic and permissions remain server-authoritative.'),
            ),
            const SizedBox(height: 20),
            TextField(controller: emailController, decoration: const InputDecoration(labelText: 'Email')),
            const SizedBox(height: 12),
            TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: auth.isLoading
                  ? null
                  : () async {
                      await ref.read(authControllerProvider.notifier).login(
                            email: emailController.text.trim(),
                            password: passwordController.text,
                          );
                    },
              child: Text(auth.isLoading ? 'Signing in...' : 'Sign in'),
            ),
            TextButton(onPressed: () => context.go('/auth/forgot'), child: const Text('Forgot password?')),
            TextButton(onPressed: () => context.go('/auth/register'), child: const Text('Create account')),
            if (auth.hasError) Text(auth.error.toString(), style: const TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authControllerProvider);
    return AppPage(
      title: 'Create account',
      child: ListView(
        children: [
          TextField(controller: fullNameController, decoration: const InputDecoration(labelText: 'Full name')),
          const SizedBox(height: 12),
          TextField(controller: emailController, decoration: const InputDecoration(labelText: 'Email')),
          const SizedBox(height: 12),
          TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'Password')),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: auth.isLoading
                ? null
                : () async {
                    await ref.read(authControllerProvider.notifier).register(
                          fullName: fullNameController.text.trim(),
                          email: emailController.text.trim(),
                          password: passwordController.text,
                        );
                  },
            child: const Text('Create account'),
          ),
        ],
      ),
    );
  }
}

class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
  final emailController = TextEditingController();
  String? message;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Forgot password',
      child: Column(
        children: [
          TextField(controller: emailController, decoration: const InputDecoration(labelText: 'Email')),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () async {
              await ref.read(authControllerProvider.notifier).forgotPassword(emailController.text.trim());
              setState(() => message = 'If the account exists, a reset link has been sent.');
            },
            child: const Text('Send reset link'),
          ),
          if (message != null) Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(message!),
          ),
        ],
      ),
    );
  }
}

class ResetPasswordPage extends ConsumerStatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  ConsumerState<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends ConsumerState<ResetPasswordPage> {
  final uidController = TextEditingController();
  final tokenController = TextEditingController();
  final passwordController = TextEditingController();
  String? message;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'Reset password',
      child: ListView(
        children: [
          TextField(controller: uidController, decoration: const InputDecoration(labelText: 'UID')),
          const SizedBox(height: 12),
          TextField(controller: tokenController, decoration: const InputDecoration(labelText: 'Token')),
          const SizedBox(height: 12),
          TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(labelText: 'New password')),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () async {
              await ref.read(authControllerProvider.notifier).resetPassword(
                    uid: uidController.text.trim(),
                    token: tokenController.text.trim(),
                    password: passwordController.text,
                  );
              setState(() => message = 'Password reset complete. Return to login.');
            },
            child: const Text('Reset password'),
          ),
          if (message != null) Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(message!),
          ),
        ],
      ),
    );
  }
}
